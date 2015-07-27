//
//  GFGeofence.m
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import "GFGeofence.h"

@implementation GFGeofence

#pragma Initialization Methods
- (id) initFromCLCircularRegion:(CLCircularRegion *)region andName:(NSString *)name{
    self = [super init];
    if( !self ) return nil;

    self.region = region;
    self.name = name;
    self.type = GFCircularRegion;
    
    return self;
}

- (id) initFromCLCircularRegion:(CLCircularRegion *)region andUUID:(NSUUID *)UUID{
    self = [super init];
    if( !self ) return nil;
    
    self.region = region;
    self.UUID = UUID;
    self.type = GFCircularRegion;
    
    return self;
}

- (id) initFromCLCircularRegion:(CLCircularRegion *)region andIdentifier:(NSString *)identifier{
    self = [super init];
    if( !self ) return nil;
    
    self.region = region;
    self.identifier = identifier;
    self.type = GFCircularRegion;
    
    return self;
}

- (id) initFromMKPolygon:(MKPolygon *)polygon andName:(NSString *)name{
    self = [super init];
    if( !self ) return nil;
    
    self.polygon = polygon;
    self.name = name;
    self.type = GFPolygon;
    
    return self;
}

- (id) initFromMKPolygon:(MKPolygon *)polygon andUUID:(NSUUID *)UUID{
    self = [super init];
    if( !self ) return nil;
    
    self.polygon = polygon;
    self.UUID = UUID;
    self.type = GFPolygon;
    
    return self;
}

- (id) initFromMKPolygon:(MKPolygon *)polygon andIdentifier:(NSString *)identifier{
    self = [super init];
    if( !self ) return nil;
    
    self.polygon = polygon;
    self.identifier = identifier;
    self.type = GFPolygon;
    
    return self;
}

@end
