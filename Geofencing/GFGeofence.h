//
//  SFGeofence.h
//  Geofense Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@import CoreLocation;

@interface GFGeofence : NSObject

typedef enum{
    GFInside,
    GFOutside,
    GFNeither,
} GeofenceState;

@property (strong, nonatomic) CLCircularRegion *region;
@property (strong, nonatomic) NSString *name;
@property (nonatomic) GeofenceState currentState;
@property (nonatomic) GeofenceState lastState;

@end
