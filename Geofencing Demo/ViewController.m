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
    Geofencing *fencing;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    fencing = [[Geofencing alloc] init];
    
    CLCircularRegion *test = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(80, -40) radius:100 identifier:@"test"];
    GFGeofence *region1 = [[GFGeofence alloc] initFromCLCircularRegion:test andName:@"test"];
    
    [fencing monitorRegions:@[region1] onEnter:^(NSArray *regions) {
        NSLog(@"The count of entered regions:%i", regions.count);
    } onExit:^(NSArray *regions) {
        NSLog(@"The count of exited regions:%i", regions.count);
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
