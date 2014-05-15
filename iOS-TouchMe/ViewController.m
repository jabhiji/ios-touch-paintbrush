//
//  ViewController.m
//  iOS-TouchMe
//
//  Created by Abhijit Joshi on 5/15/14.
//  Copyright (c) 2014 Misha software solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize blackBox;
@synthesize circleArray;
@synthesize i;
@synthesize currentColor;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    blackBox.clipsToBounds = YES;
    circleArray = [[NSMutableArray alloc] initWithCapacity:1000];
    i = 0;
    currentColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch* t in touches) {
        CGPoint touchLocation;
        touchLocation = [t locationInView:blackBox];
        //NSLog(@"touchedBegan at %f %f", touchLocation.x, touchLocation.y);
    }
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch* t in touches) {
        CGPoint touchLocation;
        touchLocation = [t locationInView:blackBox];
        //NSLog(@"touchesMoved at %f %f", touchLocation.x, touchLocation.y);
        float x = touchLocation.x;
        float y = touchLocation.y;
        float R = 10.0;
        CGRect circleFrame = CGRectMake(x-R, y-R, 2*R, 2*R);
        Circle* circle = [[Circle alloc] initWithFrame:circleFrame];
        [circle setBackgroundColor:[UIColor clearColor]];
        circle.circleColor = currentColor;
        [circleArray addObject:circle];
        [blackBox addSubview:circleArray[i]];
        i++;
    }
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch* t in touches) {
        CGPoint touchLocation;
        touchLocation = [t locationInView:blackBox];
        //NSLog(@"touchesEnded at %f %f", touchLocation.x, touchLocation.y);
    }
}

- (IBAction)clearScreen:(id)sender {
    for (int kount=0; kount<i; kount++) {
        [circleArray[kount] removeFromSuperview];
    }
    [circleArray removeAllObjects];
    circleArray = nil;
    circleArray = [[NSMutableArray alloc] initWithCapacity:1000];
    i = 0;
}

- (IBAction)redColor:(id)sender {
    currentColor = [UIColor redColor];
}

- (IBAction)blueColor:(id)sender {
    currentColor = [UIColor blueColor];
}

- (IBAction)yellowColor:(id)sender {
    currentColor = [UIColor yellowColor];
}

- (IBAction)greenColor:(id)sender {
    currentColor = [UIColor greenColor];
}

- (IBAction)whiteColor:(id)sender {
    currentColor = [UIColor whiteColor];
}


@end