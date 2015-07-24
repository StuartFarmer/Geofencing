//
//  GFPolygon.h
//  Geofencing Demo
//
//  Created by Stuart Farmer on 7/24/15.
//  Copyright (c) 2015 Stuart Farmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@import MapKit;

@interface GFPolygon : NSObject

// Identification
@property (strong, nonatomic) NSString *identifier;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSUUID *UUID;

// Data
@property (strong, nonatomic) MKPolygon *polygon;

@end
