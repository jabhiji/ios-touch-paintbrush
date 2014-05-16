//
//  ViewController.h
//  iOS-TouchMe
//
//  Created by Abhijit Joshi on 5/15/14.
//  Copyright (c) 2014 Misha software solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Circle.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *blackBox;
@property (strong, nonatomic) NSMutableArray* circleArray;
@property int i;
@property UIColor* currentColor;

- (IBAction)redColor:(id)sender;
- (IBAction)blueColor:(id)sender;
- (IBAction)yellowColor:(id)sender;
- (IBAction)greenColor:(id)sender;
- (IBAction)whiteColor:(id)sender;
- (IBAction)clearScreen:(id)sender;
- (IBAction)blackColor:(id)sender;

@end