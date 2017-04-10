//
//  PathView.m
//  project
//
//  Created by htkg on 17/4/10.
//  Copyright © 2017年 Uranus. All rights reserved.
//

#import "PathView.h"

@implementation PathView
{
    CALayer * imgLayer;
}

-(id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        
        UIBezierPath * path = [UIBezierPath bezierPath];
        path.lineCapStyle=kCGLineCapRound;
        path.lineJoinStyle=kCGLineJoinRound;
        
        [path moveToPoint:CGPointMake(0, 0)];
        [path addLineToPoint:CGPointMake(0, 64)];
        [path addLineToPoint:CGPointMake(CGRectGetMidX(self.frame)-60, 64)];
        
        [path addCurveToPoint:CGPointMake(CGRectGetMidX(self.frame), 64+25) controlPoint1:CGPointMake(CGRectGetMidX(self.frame)-30, 64) controlPoint2:CGPointMake(CGRectGetMidX(self.frame)-30, 64+25)];
        
        [path addCurveToPoint:CGPointMake(CGRectGetMidX(self.frame)+60, 64) controlPoint1:CGPointMake(CGRectGetMidX(self.frame)+30, 64+25) controlPoint2:CGPointMake(CGRectGetMidX(self.frame)+30, 64)];
        
        [path addLineToPoint:CGPointMake(self.frame.size.width, 64)];
        [path addLineToPoint:CGPointMake(self.frame.size.width, 0)];
        [path closePath];
        
        path.lineWidth=5.0;
        
        CAShapeLayer * layer = [CAShapeLayer layer];
        layer.fillColor = [UIColor colorWithRed:0.23 green:0.23 blue:0.23 alpha:1.00].CGColor;
        layer.strokeColor = [UIColor clearColor].CGColor;
        layer.path=path.CGPath;
        [self.layer addSublayer:layer];
        
        imgLayer = [CALayer layer];
        imgLayer.frame =  CGRectMake(CGRectGetMidX(self.frame)-30, 64+25-60, 60, 60);
        UIImage * image = [UIImage imageNamed:@"touxiang@2x.png"];
        imgLayer.contents = (__bridge id)image.CGImage;
        [self.layer addSublayer:imgLayer];
                
    }
    return self;
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
//    NSLog(@"%@-%@",NSStringFromCGPoint(point),NSStringFromCGRect(imgLayer.frame));
    
    if ([imgLayer hitTest:point]) {
        NSLog(@"头像被点击");
    }
    
}



@end
