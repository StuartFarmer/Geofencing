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

@interface ViewController () <MKMapViewDelegate> {
    Geofencing *fencing;
    MKMapView *mapView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mapView = [[MKMapView alloc] initWithFrame:self.view.frame];
    
    mapView.delegate = self;
    mapView.showsUserLocation = true;
    
    [self.view addSubview:mapView];
    
    [mapView addOverlay:[StateHelper MKPolygonForUtah]];
    [mapView addOverlay:[StateHelper MKPolygonForArizona]];
    [mapView addOverlay:[StateHelper MKPolygonForColorado]];
    [mapView addOverlay:[StateHelper MKPolygonForNewMexico]];
    
    fencing = [[Geofencing alloc] init];
    
    [fencing monitorRegions:@[[StateHelper MKPolygonForUtah],[StateHelper MKPolygonForArizona],[StateHelper MKPolygonForColorado],[StateHelper MKPolygonForNewMexico]] onEnter:^(NSArray *regions) {
        NSLog(@"You're in Utah, baby!");
    } onExit:^(NSArray *regions) {
        NSLog(@"You left Utah.");
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay
{
    if ([overlay isKindOfClass:[MKPolygon class]])
    {
        MKPolygonView* aView = [[MKPolygonView alloc]initWithPolygon:(MKPolygon*)overlay];
        aView.fillColor = [[UIColor cyanColor] colorWithAlphaComponent:0.2];
        aView.strokeColor = [[UIColor blueColor] colorWithAlphaComponent:0.7];
        aView.lineWidth = 3;
        return aView;
    }
    return nil;
}

@end
