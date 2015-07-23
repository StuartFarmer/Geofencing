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

@interface ViewController () <CLLocationManagerDelegate> {
    CLLocationManager *manager;
    Geofencing *fencing;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    fencing = [[Geofencing alloc] init];
    [fencing test];
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
