//
//  ViewController.m
//  Geofencing Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright (c) 2015 Stuart Farmer. All rights reserved.
//

#import "ViewController.h"
#import "Geofencing.h"

@import MapKit;

@interface ViewController () {
   
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *geofences = [[NSMutableArray alloc] init];
    CLCircularRegion *someRegion = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(-40, 80) radius:100 identifier:nil];
    Geofencing *fencing = [[Geofencing alloc] init];
    [fencing monitorRegions:@[] onEnter:^(NSArray *regions) {
        for (CLCircularRegion *region in regions) {
            // do something with the CLCircularRegions
        }
        for (MKPolygon *polygon in regions) {
            // do something with the MKPolygons
        }
    } onExit:^(NSArray *regions) {
        for (CLCircularRegion *region in regions) {
            // do something with the CLCircularRegions
        }
        for (MKPolygon *polygon in regions) {
            // do something with the MKPolygons
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
