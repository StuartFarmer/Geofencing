//
//  Geofencing.m
//  Geofense Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import "Geofencing.h"
#import "GFGeofence.h"

@interface Geofencing() <CLLocationManagerDelegate>

@end

@implementation Geofencing

- (id) init {
    self = [super init];
    if( !self ) return nil;

    self.geofences = [[NSMutableArray alloc] init];
    
    // Spin up location manager
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
    
    return self;
}

- (void)test {
    [self.locationManager requestAlwaysAuthorization];
    //[locationManager startUpdatingLocation];
}

- (void)monitorRegions:(NSArray *)regions onEnter:(regions)enterBlock onExit:(regions)exitBlock {
    
    // Convert CLCircularRegions & MKPolygons to GFGeofence objects and add them to the global array
    for (id object in regions) {
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
    
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager startUpdatingLocation];
    
}

- (void)locationManager:(nonnull CLLocationManager *)manager didUpdateLocations:(nonnull NSArray *)locations {
    CLLocation *location = [locations lastObject];
    // Arrays to be returned by block
    NSMutableArray *enteredRegions = [[NSMutableArray alloc] init];
    NSMutableArray *exitedRegions = [[NSMutableArray alloc] init];
    
    for (GFGeofence *fence in self.geofences) {
        // Modify region state depending on new user location
        if ([fence.region containsCoordinate:location.coordinate]) fence.currentState = GFInside;
        else fence.currentState = GFOutside;
        
        // Check if there is a difference in states, and add fence to appropriate array if so
        if (fence.currentState != fence.lastState) {
            switch (fence.currentState) {
                case GFInside:
                    [enteredRegions addObject:fence];
                    break;
                case GFOutside:
                    [exitedRegions addObject:fence];
                default:
                    break;
            }
        }
        fence.lastState = fence.currentState;
        NSLog(@"Regions entered: %@", enteredRegions.count ? enteredRegions : @"0");
        NSLog(@"Regions exited: %@", exitedRegions.count ? exitedRegions : @"0");
    }
    
    // Return arrays to monitorRegions to be send back.
    if ([enteredRegions count]>0) NSLog(@"You entered somewhere!");
}

@end
