//
//  ViewController.m
//  animations-homework
//
//  Created by Charles Kang on 9/30/15.
//  Copyright © 2015 Charles Kang. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *rotatingMike;

@end

@implementation ViewController
- (IBAction)spinMikeButton:(id)sender {
    
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"transform.rotation.y";
    animation.fromValue = @5;
    animation.toValue = @15;
    animation.duration = 5;
    animation.repeatCount = 15;
    
    [self.rotatingMike.layer addAnimation:animation forKey:@"basic"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

@end