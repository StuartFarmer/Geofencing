//
//  StateHelper.h
//  Geofencing Demo
//
//  Created by Stuart Farmer on 7/27/15.
//  Copyright © 2015 Stuart Farmer. All rights reserved.
//

#import <Foundation/Foundation.h>

@import CoreLocation;
@import MapKit;

@interface StateHelper : NSObject

+ (MKPolygon *)MKPolygonForUtah;
+ (MKPolygon *)MKPolygonForColorado;
+ (MKPolygon *)MKPolygonForArizona;
+ (MKPolygon *)MKPolygonForNewMexico;

@end
