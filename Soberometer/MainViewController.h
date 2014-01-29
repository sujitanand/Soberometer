//
//  MainViewController.h
//  Soberometer
//
//  Created by Sujit Anand on 12/12/13.
//  Copyright (c) 2013 Sujit Anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface MainViewController : UIViewController{
    UIView *mainView;
    UIView *statusBar;
    UIView *headerView;
    CAShapeLayer *layer;
    
    CAShapeLayer *circleLayer;
    
    CAShapeLayer *circleLayerx1y1;
    CAShapeLayer *circleLayerx1y2;
    CAShapeLayer *circleLayerx1y3;
    
    CAShapeLayer *circleLayerx2y1;
    CAShapeLayer *circleLayerx2y2;
    CAShapeLayer *circleLayerx2y3;
    
    CAShapeLayer *circleLayerx3y1;
    CAShapeLayer *circleLayerx3y2;
    CAShapeLayer *circleLayerx3y3;
    
}

@end
