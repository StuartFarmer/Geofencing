//
//  GFGeofence.h
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
} GeofenceState;

typedef enum {
    GFInvalid,
    GFCircularRegion,
    GFPolygon,
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

// Initialization Methods
- (id) initFromCLCircularRegion:(CLCircularRegion *)region andName:(NSString *)name;
- (id) initFromCLCircularRegion:(CLCircularRegion *)region andUUID:(NSUUID *)UUID;
- (id) initFromCLCircularRegion:(CLCircularRegion *)region andIdentifier:(NSString *)identifier;

- (id) initFromMKPolygon:(MKPolygon *)polygon andName:(NSString *)name;
- (id) initFromMKPolygon:(MKPolygon *)polygon andUUID:(NSUUID *)UUID;
- (id) initFromMKPolygon:(MKPolygon *)polygon andIdentifier:(NSString *)identifier;

@end
