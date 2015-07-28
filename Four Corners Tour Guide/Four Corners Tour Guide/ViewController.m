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

#import "ViewController.h"
#import "StateHelper.h"
#import "Geofencing.h"

@import MapKit;

@interface ViewController () <MKMapViewDelegate> {
    Geofencing *fencing;
    NSString *currentState;
    
    UIActivityIndicatorView *activityIndicator;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Hide UI elements and start activity indicator until application gets user's location
    self.backgroundImageView.image = [UIImage imageNamed:@"launchBg.jpg"];
    self.titleLabel.alpha = 0;
    self.flagImageView.alpha = 0;
    self.capitalLabel.alpha = 0;
    self.populationLabel.alpha = 0;
    self.stateBirdLabel.alpha = 0;
    self.factsTextView.alpha = 0;
    self.moreInfoButton.alpha = 0;
    
    activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activityIndicator.center = self.view.center;
    // If you need custom color, use color property
    // activityIndicator.color = yourDesirableColor;
    [self.view addSubview:activityIndicator];
    [activityIndicator startAnimating];
    
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
            currentState = fence.identifier;
            [self updateUIForState:currentState];
        }
        activityIndicator.hidden = true;
    } onExit:^(NSArray *regions){
        activityIndicator.hidden = false;
        [UIView animateWithDuration:0.5 animations:^{
            self.titleLabel.alpha = 0;
            self.flagImageView.alpha = 0;
            self.capitalLabel.alpha = 0;
            self.populationLabel.alpha = 0;
            self.stateBirdLabel.alpha = 0;
            self.factsTextView.alpha = 0;
            self.moreInfoButton.alpha = 0;
        }];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UI Update Methods
- (void)updateUIForState:(NSString *)identifier {
    if ([identifier isEqual:@"Utah"]) {
        self.backgroundImageView.image = [UIImage imageNamed:@"utahBg.jpg"];
        self.titleLabel.text = @"Welcome to Utah!";
        self.flagImageView.image = [UIImage imageNamed:@"utahFlag.png"];
        self.capitalLabel.text = @"Capital: Salt Lake City";
        self.populationLabel.text = @"Population: 2.943 million";
        self.stateBirdLabel.text = @"State bird: California Gull";
        self.factsTextView.text = @"Utah is a western state defined by its vast expanses of desert and the Wasatch Range mountains. Salt Lake City, the capital, is centered around Temple Square, headquarters of the Mormon Church and site of its majestic temple and tabernacle, with its massive dome and renowned choir. The Great Salt Lake’s buoyant waters attract swimmers and sunbathers, especially at Antelope Island State Park.";
    }
    else if ([identifier isEqual:@"Arizona"]) {
        self.backgroundImageView.image = [UIImage imageNamed:@"arizonaBg.jpg"];
        self.titleLabel.text = @"Welcome to Arizona!";
        self.flagImageView.image = [UIImage imageNamed:@"arizonaFlag.png"];
        self.capitalLabel.text = @"Capital: Pheonix";
        self.populationLabel.text = @"Population: 6.731 million";
        self.stateBirdLabel.text = @"State bird: Cactus Wren";
        self.factsTextView.text = @"Arizona, a southwestern U.S. state, is best known for its reliably sunny weather and as home to the the Grand Canyon, the mile-deep chasm carved by the Colorado River. Many visitors utilize Flagstaff, a Ponderosa Pine-covered mountain town, as a gateway to the Grand Canyon. Other natural features include the saguaro cactus-filled Sonoran Desert and the rugged formations of Red Rock State Park.";
    }
    else if ([identifier isEqual:@"Colorado"]) {
        self.backgroundImageView.image = [UIImage imageNamed:@"coloradoBg.jpg"];
        self.titleLabel.text = @"Welcome to Colorado!";
        self.flagImageView.image = [UIImage imageNamed:@"coloradoFlag.jpg"];
        self.capitalLabel.text = @"Capital: Denver";
        self.populationLabel.text = @"Population: 5.356 million";
        self.stateBirdLabel.text = @"State bird: Lark Bunting";
        self.factsTextView.text = @"Colorado, a western U.S. state, is known for its geographic diversity, with snow-covered mountains, arid desert lands and river canyons. Opportunities for outdoor recreation include kayaking the Colorado River, hiking the nearly 500-mile Colorado Trail and skiing at resorts such as Vail and Aspen. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area.";
    }
    else if ([identifier isEqual:@"New Mexico"]) {
        self.backgroundImageView.image = [UIImage imageNamed:@"newMexicoBg.jpg"];
        self.titleLabel.text = @"Welcome to New Mexico!";
        self.flagImageView.image = [UIImage imageNamed:@"newMexicoFlag.png"];
        self.capitalLabel.text = @"Capital: Santa Fe";
        self.populationLabel.text = @"Population: 2.086 million";
        self.stateBirdLabel.text = @"State bird: Greater Roadrunner";
        self.factsTextView.text = @"New Mexico is a southwestern state whose diverse terrain encompasses the Chihuahuan Desert and the Sangre de Cristo Mountains. Its capital, Santa Fe, founded in 1610, is known for upscale spas and Spanish colonial architecture. It's also home to a vibrant arts scene, as well as the Georgia O’Keeffe Museum, with its iconic New Mexican landscape paintings, and the open-air Santa Fe Opera.";
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        self.titleLabel.alpha = 1;
        self.flagImageView.alpha = 1;
        self.capitalLabel.alpha = 1;
        self.populationLabel.alpha = 1;
        self.stateBirdLabel.alpha = 1;
        self.factsTextView.alpha = 1;
        self.moreInfoButton.alpha = 1;
    }];
}

- (IBAction)moreInfoPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://en.wikipedia.org/wiki/%@", currentState]]];
}
@end