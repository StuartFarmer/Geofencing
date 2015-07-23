//
//  Geofencing.m
//  Geofense Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import "Geofencing.h"
#import "GFGeofence.h"

#import "MTKObserving.h"

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

    
    NSLog(@"This is running");
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        while (self.monitoring) {
            //Here your non-main thread.
            [NSThread sleepForTimeInterval:2.0f];
            dispatch_async(dispatch_get_main_queue(), ^{
                //Here you returns to main thread.
                NSLog(@"%@",currentLocation);
            });
        }
    });
}

- (void)stopMonitoring {
    self.monitoring = false;
}

- (void)locationManager:(nonnull CLLocationManager *)manager didUpdateLocations:(nonnull NSArray *)locations {
    currentLocation = [locations lastObject];
//    
//    for (GFGeofence *fence in self.geofences) {
//        // Modify region state depending on new user location
//        if ([fence.region containsCoordinate:location.coordinate]) fence.currentState = GFInside;
//        else fence.currentState = GFOutside;
//        
//        // Check if there is a difference in states, and add fence to appropriate array if so
//        if (fence.currentState != fence.lastState) {
//            switch (fence.currentState) {
//                case GFInside:
//                    [self.enteredRegions addObject:fence];
//                    break;
//                case GFOutside:
//                    [self.exitedRegions addObject:fence];
//                default:
//                    break;
//            }
//        }
//        fence.lastState = fence.currentState;
//        NSLog(@"Regions entered: %@", self.enteredRegions.count ? self.enteredRegions : @"0");
//        NSLog(@"Regions exited: %@", self.exitedRegions.count ? self.exitedRegions : @"0");
//    }
//    
//    // Return arrays to monitorRegions to be send back.
//    if ([self.enteredRegions count]>0) NSLog(@"You entered somewhere!");
}

@end
