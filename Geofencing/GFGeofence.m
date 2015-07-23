//
//  SFGeofence.m
//  Geofense Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import "GFGeofence.h"

@implementation GFGeofence

- (id) initFromCLCircularRegion:(CLCircularRegion *)region {
    self = [super init];
    if( !self ) return nil;

    self.region = region;
    
    return self;
}

- (id) initFromMKPolygon:(MKPolygon *)polygon {
    self = [super init];
    if( !self ) return nil;
    
    self.polygon = polygon;
    
    return self;
}

@end
