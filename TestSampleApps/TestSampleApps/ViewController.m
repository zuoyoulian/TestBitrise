//
//  ViewController.m
//  TestSampleApps
//
//  Created by 左建军 on 16/7/27.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *panView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    
    CGFloat m34 = 800;
    CGFloat value = 50; //（控制翻转角度）
    CGPoint point = CGPointMake(0.5, 0.5);//设定翻转时的中心点，0.5为视图layer的正中
    CATransform3D transfrom = CATransform3DIdentity;
    transfrom.m34 = 1.0 / m34;
    CGFloat radiants = value / 360.0 * 2 * M_PI;
    transfrom = CATransform3DRotate(transfrom, radiants, 0.0f, 1.0f, 0.0f);
    CALayer *layer = self.panView.layer;
    layer.anchorPoint = point;
    layer.transform = transfrom;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
