//
//  Geofencing.m
//  Geofense Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import "Geofencing.h"
#import "GFGeofence.h"

@implementation Geofencing

- (void)monitorRegions:(NSArray *)regions onEnter:(regions)enterBlock onExit:(regions)exitBlock {
    
    // Convert CLCircularRegions to GFGeofence objects
    geofences = [[NSMutableArray alloc] init];
    for (CLCircularRegion *region in regions) {
        GFGeofence *fence = [[GFGeofence alloc] init];
        fence.region = region;
        fence.currentState = GFOutside;
        fence.lastState = GFOutside;
        [geofences addObject:fence];
    }
    
    // Spin up location manager
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    
    if ([CLLocationManager authorizationStatus]==kCLAuthorizationStatusNotDetermined) {
        NSLog(@"Not Determined");
    }
    
    if ([CLLocationManager authorizationStatus]==kCLAuthorizationStatusDenied) {
        NSLog(@"Denied");
    }
    
    if ([CLLocationManager authorizationStatus]==kCLAuthorizationStatusRestricted) {
        NSLog(@"Restricted");
    }
    
    if ([CLLocationManager authorizationStatus]==kCLAuthorizationStatusAuthorizedAlways) {
        NSLog(@"Always Allowed");
    }
    
    if ([CLLocationManager authorizationStatus]==kCLAuthorizationStatusAuthorizedWhenInUse) {
        NSLog(@"When In Use Allowed");
    }
    [locationManager requestAlwaysAuthorization];

    [locationManager startUpdatingLocation];
    
}

- (void)locationManager:(nonnull CLLocationManager *)manager didUpdateLocations:(nonnull NSArray *)locations {
    CLLocation *location = [locations lastObject];
    NSLog(@"%@",location);
    // Arrays to be returned by block
    NSMutableArray *enteredRegions = [[NSMutableArray alloc] init];
    NSMutableArray *exitedRegions = [[NSMutableArray alloc] init];
    
    for (GFGeofence *fence in geofences) {
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
    }
    
    // Return arrays to monitorRegions to be send back.
    if ([enteredRegions count]>0) NSLog(@"You entered somewhere!");
}

@end
