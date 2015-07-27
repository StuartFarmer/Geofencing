//
//  ViewController.m
//  Geofencing Demo
//
//  Created by Stuart Farmer on 7/22/15.
//  Copyright (c) 2015 Stuart Farmer. All rights reserved.
//

#import "ViewController.h"
#import "StateHelper.h"
#import "Geofencing.h"

@import MapKit;

@interface ViewController () {
    Geofencing *fencing;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MKPolygon *somePolygon = [MKPolygon polygonWithCoordinates:[StateHelper mapPointsforUtah] count:42];
    GFGeofence *utah = [[GFGeofence alloc] initFromMKPolygon:somePolygon andIdentifier:@"Utah"];
    fencing = [[Geofencing alloc] init];
    
    [fencing monitorRegions:@[utah] onEnter:^(NSArray *regions) {
        NSLog(@"You're in Utah, baby!");
    } onExit:^(NSArray *regions) {
        NSLog(@"You left Utah.");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(nonnull CLLocationManager *)manager didUpdateLocations:(nonnull NSArray *)locations {
    NSLog(@"Updated location.");
}

- (IBAction)startMonitoringPressed:(id)sender {
    CLCircularRegion *test = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(80,80) radius:10 identifier:@"5"];
    [fencing.enteredRegions addObject:test];
}
@end
