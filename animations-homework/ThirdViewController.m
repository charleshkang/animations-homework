//
//  ThirdViewController.m
//  animations-homework
//
//  Created by Charles Kang on 10/2/15.
//  Copyright © 2015 Charles Kang. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *mikeIRL;

@end

@implementation ThirdViewController
- (IBAction)shrinkImageButton:(id)sender {
    
    CABasicAnimation* shrink = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    shrink.toValue = [NSNumber numberWithDouble:0.2];
    shrink.duration = 1;
    shrink.delegate = self;
    shrink.repeatCount=INFINITY;
    shrink.autoreverses=YES;
    [self.mikeIRL.layer addAnimation:shrink forKey:@"shrink"];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
