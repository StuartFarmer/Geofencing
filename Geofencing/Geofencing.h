//
//  Geofencing.h
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GFGeofence.h"

@import CoreLocation;

typedef void(^regions) (NSArray *regions);

@interface Geofencing : NSObject

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) NSMutableArray *geofences;

@property (strong, nonatomic) NSMutableArray *enteredRegions;
@property (strong, nonatomic) NSMutableArray *exitedRegions;

@property (nonatomic) BOOL monitoring;
@property (nonatomic) float updateInterval;

- (void)monitorRegions:(NSArray *)fences onEnter:(regions)enterBlock onExit:(regions)exitBlock;
- (void)stopMonitoring;

@end
