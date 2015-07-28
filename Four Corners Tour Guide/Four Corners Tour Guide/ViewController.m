
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
    
    // Create an array of the geofences you want to monitor
    NSMutableArray *southWesternStates = [[NSMutableArray alloc] init];
    GFGeofence *utah = [[GFGeofence alloc] initFromMKPolygon:[StateHelper MKPolygonForUtah] andIdentifier:@"Utah"];
    [southWesternStates addObject:utah];
    
    GFGeofence *arizona = [[GFGeofence alloc] initFromMKPolygon:[StateHelper MKPolygonForArizona] andIdentifier:@"Arizona"];
    [southWesternStates addObject:arizona];
    
    GFGeofence *colorado = [[GFGeofence alloc] initFromMKPolygon:[StateHelper MKPolygonForColorado] andIdentifier:@"Colorado"];
    [southWesternStates addObject:colorado];
    
    GFGeofence *newMexico = [[GFGeofence alloc] initFromMKPolygon:[StateHelper MKPolygonForNewMexico] andIdentifier:@"New Mexico"];
    [southWesternStates addObject:newMexico];
    
    // Set up a Geofencing object and start monitoring
    fencing = [[Geofencing alloc] init];
    [fencing monitorRegions:southWesternStates onEnter:^(NSArray *regions) {
        // Handle and identify fence enter events
        for (GFGeofence *fence in regions) {
            if ([fence.identifier isEqual:@"Utah"]) NSLog(@"Welcome to Utah!");
            else if ([fence.identifier isEqual:@"Arizona"]) NSLog(@"Welcome to Arizona!");
            else if ([fence.identifier isEqual:@"Colorado"]) NSLog(@"Welcome to Colorado!");
            else if ([fence.identifier isEqual:@"New Mexico"]) NSLog(@"Welcome to New Mexico!");
        }
    } onExit:^(NSArray *regions) {
        // Handle and identify fence exit events
        for (GFGeofence *fence in regions) {
            if ([fence.identifier isEqual:@"Utah"]) NSLog(@"See you next time in Utah!");
            else if ([fence.identifier isEqual:@"Arizona"]) NSLog(@"See you next time in Arizona!");
            else if ([fence.identifier isEqual:@"Colorado"]) NSLog(@"See you next time in Colorado!");
            else if ([fence.identifier isEqual:@"New Mexico"]) NSLog(@"See you next time in New Mexico!");
        }
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UI Update Methods
- (void)updateUIForState:(NSString *)identifier {
    
}

@end