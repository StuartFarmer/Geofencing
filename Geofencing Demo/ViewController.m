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
    
    CLCircularRegion *region1 = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(40, -80) radius:100 identifier:@"1"];
    CLCircularRegion *region2 = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(41, -80) radius:100 identifier:@"2"];
    CLCircularRegion *region3 = [[CLCircularRegion alloc] initWithCenter:CLLocationCoordinate2DMake(42, -80) radius:100 identifier:@"3"];
    
    
    [fencing monitorRegions:@[region1, region2, region3] onEnter:^(NSArray *regions) {
        NSLog(@"Do something");
    } onExit:^(NSArray *regions) {
        NSLog(@"Do something else");
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
    
    

}
@end
