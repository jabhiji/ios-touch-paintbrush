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
@synthesize circle;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    blackBox.clipsToBounds = YES;
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
        NSLog(@"touchedBegan at %f %f", touchLocation.x, touchLocation.y);

        float x = touchLocation.x;
        float y = touchLocation.y;
        float R = 10.0;
        CGRect circleFrame = CGRectMake(x-R, y-R, 2*R, 2*R);
        circle = [[Circle alloc] initWithFrame:circleFrame];
        [circle setBackgroundColor:[UIColor clearColor]];
        circle.circleColor = [UIColor blueColor];
        [blackBox addSubview:circle];
    }
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch* t in touches) {
        CGPoint touchLocation;
        touchLocation = [t locationInView:blackBox];
        NSLog(@"touchesMoved at %f %f", touchLocation.x, touchLocation.y);
        float x = touchLocation.x;
        float y = touchLocation.y;
        float R = 10.0;
        CGRect circleFrame = CGRectMake(x-R, y-R, 2*R, 2*R);
        circle = [[Circle alloc] initWithFrame:circleFrame];
        [circle setBackgroundColor:[UIColor clearColor]];
        circle.circleColor = [UIColor yellowColor];
        [blackBox addSubview:circle];
    }
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch* t in touches) {
        CGPoint touchLocation;
        touchLocation = [t locationInView:blackBox];
        NSLog(@"touchesEnded at %f %f", touchLocation.x, touchLocation.y);
        float x = touchLocation.x;
        float y = touchLocation.y;
        float R = 10.0;
        CGRect circleFrame = CGRectMake(x-R, y-R, 2*R, 2*R);
        circle = [[Circle alloc] initWithFrame:circleFrame];
        [circle setBackgroundColor:[UIColor clearColor]];
        circle.circleColor = [UIColor whiteColor];
        [blackBox addSubview:circle];
    }
}

@end