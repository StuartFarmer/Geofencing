//
// The MIT License (MIT)
//
// Copyright (c) 2015 Stuart Farmer
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#import "Geofencing.h"

@interface Geofencing() <CLLocationManagerDelegate> {
    CLLocation *currentLocation;
}

@end

@implementation Geofencing

#pragma Intialization Method
- (id) init {
    self = [super init];
    if( !self ) return nil;

    // Set up arrays
    self.geofences = [[NSMutableArray alloc] init];
    self.enteredRegions = [[NSMutableArray alloc] init];
    self.exitedRegions = [[NSMutableArray alloc] init];
    
    // Spin up location manager
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
    
    self.monitoring = false;
    currentLocation = [[CLLocation alloc] init];
    
    return self;
}

#pragma Class Methods for returning usable arrays from dictionaries
+ (NSArray *)geofenceArrayForIdentifiers:(NSDictionary *)fencesAndIdentifiers {
    NSMutableArray *geofenceArray = [[NSMutableArray alloc] init];
    for (id key in fencesAndIdentifiers) {
        if (!([fencesAndIdentifiers[key] isKindOfClass:[NSString class]])) @throw [NSException exceptionWithName:@"ImproperIdentifierType" reason:@"An object that is not an NSString is being passed into the argument dictionary for method geofenceArrayForIdentifiers. Only pass NSString objects as the objects, and CLCircularRegion, MKPolygon, or GFGeofence objects as keys." userInfo:nil];
        
        if ([key isKindOfClass:[CLCircularRegion class]]) {
            GFGeofence *fence = [[GFGeofence alloc] init];
            fence.region = key;
            fence.currentState = GFOutside;
            fence.lastState = GFOutside;
            fence.type = GFCircularRegion;
            fence.identifier = fencesAndIdentifiers[key];
            [geofenceArray addObject:fence];
        }
        if ([key isKindOfClass:[MKPolygon class]]) {
            GFGeofence *fence = [[GFGeofence alloc] init];
            fence.polygon = key;
            fence.currentState = GFOutside;
            fence.lastState = GFOutside;
            fence.type = GFPolygon;
            fence.identifier = fencesAndIdentifiers[key];
            [geofenceArray addObject:fence];
        }
        if ([key isKindOfClass:[GFGeofence class]]) {
            GFGeofence *fence = [[GFGeofence alloc] init];
            fence = (GFGeofence *)key;
            
            // Error catching if fence object is not consistent and will cause problems later on
            if (!(fence.type == GFCircularRegion || fence.type == GFPolygon)) @throw [NSException exceptionWithName:@"ImproperGeofenceTypePassed" reason:@"A GFGeofence object was passed into geofenceArrayForIdentifiers method with an improper Geofence type. The type property must be equal to either GFPolygon or GFCircularRegion, depending on the type of geofence you are passing. Use the custom initialization methods or use a proper Geofence type to avoid this error." userInfo:nil];
            
            if (!(fence.region || fence.polygon)) @throw [NSException exceptionWithName:@"EmptyGFGeofenceObjectIteration" reason:@"A GFGeofence object was passed into geofenceArrayForIdentifiers method without a CLCircularRegion or MKPolygon in the respective region or polygon properties. Use the custom initialization methods or declare the region or polygon property to avoid this error." userInfo:nil];
            if ((fence.type == GFPolygon && fence.region) || (fence.type == GFCircularRegion && fence.polygon)) @throw [NSException exceptionWithName:@"MismatchGFGeofenceObjectType" reason:@"A GFGeofence object was passed into geofenceArrayForIdentifiers method with a mismatched region property and mismatched type. Use the custom initialization methods or make sure your type property matches with the object you are passing into either the region or polygon property." userInfo:nil];
            
            fence.identifier = fencesAndIdentifiers[key];
            fence.currentState = GFOutside;
            fence.lastState = GFOutside;
            [geofenceArray addObject:fence];
        }
    }
    return (NSArray *)geofenceArray;
}

#pragma Instance Methods
- (void)monitorRegions:(NSArray *)fences onEnter:(regions)enterBlock onExit:(regions)exitBlock {
    
    // Begin monitoring
    self.monitoring = true;
    
    // Convert CLCircularRegions & MKPolygons to GFGeofence objects and add them to the global array
    for (id object in fences) {
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
        if ([object isKindOfClass:[GFGeofence class]]) {
            GFGeofence *fence = [[GFGeofence alloc] init];
            fence = (GFGeofence *)object;
            
            // Error catching if fence object is not consistent and will cause problems later on
            if (!(fence.type == GFCircularRegion || fence.type == GFPolygon)) @throw [NSException exceptionWithName:@"ImproperGeofenceTypePassed" reason:@"A GFGeofence object was passed into monitorRegions method with an improper Geofence type. The type property must be equal to either GFPolygon or GFCircularRegion, depending on the type of geofence you are passing. Use the custom initialization methods or use a proper Geofence type to avoid this error." userInfo:nil];

            if (!(fence.region || fence.polygon)) @throw [NSException exceptionWithName:@"EmptyGFGeofenceObjectIteration" reason:@"A GFGeofence object was passed into monitorRegions method without a CLCircularRegion or MKPolygon in the respective region or polygon properties. Use the custom initialization methods or declare the region or polygon property to avoid this error." userInfo:nil];
            if ((fence.type == GFPolygon && fence.region) || (fence.type == GFCircularRegion && fence.polygon)) @throw [NSException exceptionWithName:@"MismatchGFGeofenceObjectType" reason:@"A GFGeofence object was passed into monitorRegions method with a mismatched region property and mismatched type. Use the custom initialization methods or make sure your type property matches with the object you are passing into either the region or polygon property." userInfo:nil];
            
            fence.currentState = GFOutside;
            fence.lastState = GFOutside;
            [self.geofences addObject:fence];
        }
    }
    
    // Begin location services
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager startUpdatingLocation];

    if ([CLLocationManager locationServicesEnabled]) {
        // Start running the loop on a non-main thread.
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            
            while (self.monitoring) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    // Check if location is within any geofences
                    for (GFGeofence *fence in self.geofences) {
                        
                        // Test whether or not a user's location is within a region or polygon and adjust the current state accordingly
                        if (fence.type == GFCircularRegion) {
                            if ([fence.region containsCoordinate:currentLocation.coordinate]) fence.currentState = GFInside;
                            else fence.currentState = GFOutside;
                        } else if (fence.type == GFPolygon) {
                            if ([self location:currentLocation IsWithinPolygon:fence.polygon]) fence.currentState = GFInside;
                            else fence.currentState = GFOutside;
                        }
                        
                        // Check if there is a difference in states, and add fence to appropriate array if so
                        if (fence.currentState != fence.lastState) {
                            switch (fence.currentState) {
                                case GFInside:
                                    [self.enteredRegions addObject:fence];
                                    break;
                                case GFOutside:
                                    [self.exitedRegions addObject:fence];
                                default:
                                    break;
                            }
                        }
                        
                        // Update the region's state
                        fence.lastState = fence.currentState;
                    }
                    
                    // Send back entered and exited regions to the callback blocks if there are any to send.
                    if ([self.enteredRegions count]>0) {
                        enterBlock(self.enteredRegions);
                        [self.enteredRegions removeAllObjects];
                    }
                    if ([self.exitedRegions count]>0) {
                        exitBlock(self.exitedRegions);
                        [self.exitedRegions removeAllObjects];
                    }
                });
                
                // Sleep for the update interval. Update interval must be greater than 1 second.
                if (self.updateInterval < 1) self.updateInterval = 1;
                [NSThread sleepForTimeInterval:self.updateInterval];
            }
        });
    }
    else {
        NSLog(@"Location services are not enabled. Unable to start monitoring geofences.");
    }
}

- (void)stopMonitoring {
    self.monitoring = false;
}

// Hit testing for polygons. Converted from an old C method.
- (BOOL)location:(CLLocation *)location IsWithinPolygon:(MKPolygon *)polygon {
    CLLocationCoordinate2D coordinate = {location.coordinate.latitude, location.coordinate.longitude};
    MKMapPoint mapPoint = MKMapPointForCoordinate(coordinate);
    
    CGMutablePathRef mpr = CGPathCreateMutable();
    MKMapPoint *polygonPoints = polygon.points;
    size_t nCount = polygon.pointCount;
    
    for (int p = 0; p < nCount; p++)
    {
        MKMapPoint mp = polygonPoints[p];
        
        if (p == 0)
            CGPathMoveToPoint(mpr, NULL, mp.x, mp.y);
        else
            CGPathAddLineToPoint(mpr, NULL, mp.x, mp.y);
    }
    
    CGPoint mapPointAsCGP = CGPointMake(mapPoint.x, mapPoint.y);
    
    BOOL pointIsInPolygon = CGPathContainsPoint(mpr, NULL, mapPointAsCGP, FALSE);
    CGPathRelease(mpr);
    
    return pointIsInPolygon;
}

#pragma CLLocationManager Delegate Methods
- (void)locationManager:(nonnull CLLocationManager *)manager didUpdateLocations:(nonnull NSArray *)locations {
    currentLocation = [locations lastObject];
}

@end
