//
//  SFGeofence.h
//  Geofense Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@import CoreLocation;
@import MapKit;

@interface GFGeofence : NSObject

typedef enum{
    GFInside,
    GFOutside,
    GFNeither,
} GeofenceState;

typedef enum {
    GFCircularRegion,
    GFPolygon,
    GFMultiPolygon
} GeofenceType;

// Identifiers
@property (nonatomic) GeofenceType type;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) NSUUID *UUID;

// Descriptors
@property (nonatomic) GeofenceState currentState;
@property (nonatomic) GeofenceState lastState;

// Data
@property (strong, nonatomic) CLCircularRegion *region;
@property (strong, nonatomic) MKPolygon *polygon;

@end
