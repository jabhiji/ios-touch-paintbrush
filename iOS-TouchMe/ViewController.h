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
- (IBAction)clearScreen:(id)sender;
@end