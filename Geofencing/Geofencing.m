//
//  Geofencing.m
//  Geofense Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import "Geofencing.h"
#import "GFGeofence.h"

@interface Geofencing() <CLLocationManagerDelegate> {
    CLLocation *currentLocation;
}

@end

@implementation Geofencing

- (id) init {
    self = [super init];
    if( !self ) return nil;

    // Set up arrays
    self.geofences = [[NSMutableArray alloc] init];
    self.enteredRegions = [[NSMutableArray alloc] init];
    self.exitedRegions = [[NSMutableArray alloc] init];
    
    // Spin up location manager
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
    
    self.monitoring = false;
    currentLocation = [[CLLocation alloc] init];
    
    return self;
}

- (void)monitorRegions:(NSArray *)fences onEnter:(regions)enterBlock onExit:(regions)exitBlock {
    self.monitoring = true;
    // Convert CLCircularRegions & MKPolygons to GFGeofence objects and add them to the global array
    for (id object in fences) {
        if ([object isKindOfClass:[CLCircularRegion class]]) {
            GFGeofence *fence = [[GFGeofence alloc] init];
            fence.region = object;
            fence.currentState = GFOutside;
            fence.lastState = GFOutside;
            fence.type = GFCircularRegion;
            [self.geofences addObject:fence];
        }
        if ([object isKindOfClass:[MKPolygon class]]) {
            GFGeofence *fence = [[GFGeofence alloc] init];
            fence.polygon = object;
            fence.currentState = GFOutside;
            fence.lastState = GFOutside;
            fence.type = GFPolygon;
            [self.geofences addObject:fence];
        }
    }
    NSLog(@"%lu objects loaded.", (unsigned long)self.geofences.count);
    
    // Begin location services
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager startUpdatingLocation];

    // Start running the loop on a non-main thread.
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        while (self.monitoring) {
            dispatch_async(dispatch_get_main_queue(), ^{
                
                // Check if location is within any geofences
                for (GFGeofence *fence in self.geofences) {
                    
                    // Modify region state depending on new user location
                    if ([fence.region containsCoordinate:currentLocation.coordinate]) fence.currentState = GFInside;
                    else fence.currentState = GFOutside;
                    
                    // Check if there is a difference in states, and add fence to appropriate array if so
                    if (fence.currentState != fence.lastState) {
                        switch (fence.currentState) {
                            case GFInside:
                                [self.enteredRegions addObject:fence];
                                break;
                            case GFOutside:
                                [self.exitedRegions addObject:fence];
                            default:
                                break;
                        }
                    }
                    
                    // Update the region's state
                    fence.lastState = fence.currentState;
                }
                
                // Return arrays to monitorRegions to be send back.
                if ([self.enteredRegions count]>0) enterBlock(self.enteredRegions);
                if ([self.exitedRegions count]>0) exitBlock(self.exitedRegions);

            });
            
            // Sleep for the update interval. Update interval must be greater than 1 second.
            if (self.updateInterval < 1) self.updateInterval = 1;
            [NSThread sleepForTimeInterval:self.updateInterval];
        }
    });
}

- (void)stopMonitoring {
    self.monitoring = false;
}

- (void)locationManager:(nonnull CLLocationManager *)manager didUpdateLocations:(nonnull NSArray *)locations {
    currentLocation = [locations lastObject];
}

@end
