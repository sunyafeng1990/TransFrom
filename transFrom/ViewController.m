//
//  ViewController.m
//  transFrom
//
//  Created by 孙亚锋 on 16/11/10.
//  Copyright © 2016年 孙亚锋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


//上移
- (IBAction)top:(id)sender{
 
    [UIView animateWithDuration:0.5 animations:^{
        // 使用make 相对于最原始的位置
//         self.MyImg.transform = CGAffineTransformMakeTranslation(0,-100);
        // 相对于上一次做形变
        self.MyImg.transform = CGAffineTransformTranslate(self.MyImg.transform, 0,-50);
    }];
}
//下移
- (IBAction)down:(id)sender {
    
    [UIView animateWithDuration:0.5 animations:^{
        // 使用make 相对于最原始的位置
        // self.MyImg.transform = CGAffineTransformMakeTranslation(0,100);
        // 相对于上一次做形变
        self.MyImg.transform = CGAffineTransformTranslate(self.MyImg.transform, 0,50);

    }];
}
//旋转
- (IBAction)roation:(id)sender {
    //旋转的度数.是一个弧度（不能直接写45度.写45是角度)
    [UIView animateWithDuration:.5 animations:^{
        // 相对于原始位置做旋转
         //self.MyImg.transform = CGAffineTransformMakeRotation(M_PI_4);
        
        // 相对于上一次做旋转
        self.MyImg.transform = CGAffineTransformRotate(self.MyImg.transform, M_PI_4);
    }];
  
    
    
}
//缩放
- (IBAction)suofang:(id)sender {
    /*
    [UIView animateWithDuration:.5 animations:^{
        
//        self.MyImg.transform = CGAffineTransformMakeScale(0.5,0.5);
        
        
        self.MyImg.transform = CGAffineTransformScale(self.MyImg.transform, 0.8, 0.8);
    }];
    */
    
    //delay: 延迟时间
    [UIView animateWithDuration:1.0 delay:1.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.MyImg.transform = CGAffineTransformScale(self.MyImg.transform, 0.8,0.8);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 animations:^{
            
            //        self.MyImg.transform = CGAffineTransformMakeScale(0.5,0.5);
            
            
            self.MyImg.transform = CGAffineTransformScale(self.MyImg.transform, 1.2, 1.2);
        }];
        NSLog(@"动画完成");
    }];
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
