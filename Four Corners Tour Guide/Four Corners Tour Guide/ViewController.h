//
//  ViewController.h
//  Four Corners Tour Guide
//
//  Created by Stuart Farmer on 7/28/15.
//  Copyright (c) 2015 Stuart Farmer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *flagImageView;
@property (strong, nonatomic) IBOutlet UILabel *capitalLabel;
@property (strong, nonatomic) IBOutlet UILabel *populationLabel;
@property (strong, nonatomic) IBOutlet UILabel *stateBirdLabel;
@property (strong, nonatomic) IBOutlet UITextView *factsTextView;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

- (IBAction)moreInfoPressed:(id)sender;

@end

