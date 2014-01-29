//
//  MainViewController.m
//  Soberometer
//
//  Created by Sujit Anand on 12/12/13.
//  Copyright (c) 2013 Sujit Anand. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController (){
    long randonNumber;
    NSInteger touchCount;
    NSInteger total;
    NSInteger turns;
}

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self reloadInputViews];
#if 0
    mainView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    mainView.backgroundColor = [UIColor redColor];
    [self.view addSubview:mainView];
    
    statusBar = [[UIView alloc]initWithFrame:CGRectMake(0, 0, mainView.frame.size.width, 22)];
    statusBar.backgroundColor = [UIColor yellowColor];
    [mainView addSubview:statusBar];
    
    headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 22, mainView.frame.size.width,44.0)];
    headerView.backgroundColor = [UIColor grayColor];
    [mainView addSubview:headerView];
    [self drawGrid:CGRectMake(100, 100, 150, 150)];
#endif
    
}

-(void)reloadInputViews{
    touchCount = 0;
    
    mainView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    mainView.backgroundColor = [UIColor redColor];
    [self.view addSubview:mainView];
    
    statusBar = [[UIView alloc]initWithFrame:CGRectMake(0, 0, mainView.frame.size.width, 22)];
    statusBar.backgroundColor = [UIColor yellowColor];
    [mainView addSubview:statusBar];
    
    headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 22, mainView.frame.size.width,44.0)];
    headerView.backgroundColor = [UIColor grayColor];
    [mainView addSubview:headerView];
    [self drawGrid:CGRectMake(100, 100, 150, 150)];
    
}

-(void)drawGrid:(CGRect)rect{
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    UIBezierPath *circlex1y1 = [[UIBezierPath alloc]init];
    UIBezierPath *circlex1y2 = [[UIBezierPath alloc]init];
    UIBezierPath *circlex1y3 = [[UIBezierPath alloc]init];
    
    UIBezierPath *circlex2y1 = [[UIBezierPath alloc]init];
    UIBezierPath *circlex2y2 = [[UIBezierPath alloc]init];
    UIBezierPath *circlex2y3 = [[UIBezierPath alloc]init];
    
    UIBezierPath *circlex3y1 = [[UIBezierPath alloc]init];
    UIBezierPath *circlex3y2 = [[UIBezierPath alloc]init];
    UIBezierPath *circlex3y3 = [[UIBezierPath alloc]init];
    
    [path moveToPoint:CGPointMake(20, 100)];
    [path addLineToPoint:CGPointMake(20, mainView.frame.size.height - 20)];
    
    [path moveToPoint:CGPointMake(mainView.frame.size.width/2, 100)];
    [path addLineToPoint:CGPointMake(mainView.frame.size.width/2, mainView.frame.size.height - 20)];
    
    [path moveToPoint:CGPointMake(mainView.frame.size.width - 20, 100)];
    [path addLineToPoint:CGPointMake(mainView.frame.size.width - 20, mainView.frame.size.height - 20)];
    
    [path moveToPoint:CGPointMake(20, 100)];
    [path addLineToPoint:CGPointMake(mainView.frame.size.width - 20, 100)];
    
    [path moveToPoint:CGPointMake(20, mainView.frame.size.height/2 + 25)];
    [path addLineToPoint:CGPointMake(mainView.frame.size.width -20, mainView.frame.size.height/2 + 25)];
    
    [path moveToPoint:CGPointMake(20, mainView.frame.size.height - 20)];
    [path addLineToPoint:CGPointMake(mainView.frame.size.width - 20, mainView.frame.size.height - 20)];
    
    [circlex1y1 moveToPoint:CGPointMake(20, 100)];
    [circlex1y1 addArcWithCenter:CGPointMake(20, 100) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    
    
    [circlex2y1 moveToPoint:CGPointMake(mainView.frame.size.width/2, 100)];
    [circlex2y1 addArcWithCenter:CGPointMake(mainView.frame.size.width/2, 100) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    
    
    [circlex3y1 moveToPoint:CGPointMake(mainView.frame.size.width-20, 100)];
    [circlex3y1 addArcWithCenter:CGPointMake(mainView.frame.size.width-20, 100) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    


    [circlex1y2 moveToPoint:CGPointMake(20, mainView.frame.size.height/2 + 25)];
    [circlex1y2 addArcWithCenter:CGPointMake(20, mainView.frame.size.height/2 + 25) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    
    
    [circlex2y2 moveToPoint:CGPointMake(mainView.frame.size.width/2, mainView.frame.size.height/2 + 25)];
    [circlex2y2 addArcWithCenter:CGPointMake(mainView.frame.size.width/2, mainView.frame.size.height/2 + 25) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    
    
    [circlex3y2 moveToPoint:CGPointMake(mainView.frame.size.width/2, mainView.frame.size.height - 20)];
    [circlex3y2 addArcWithCenter:CGPointMake(mainView.frame.size.width/2, mainView.frame.size.height-20) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    

    
    [circlex1y3 moveToPoint:CGPointMake(mainView.frame.size.width - 20, mainView.frame.size.height/2 + 25)];
    [circlex1y3 addArcWithCenter:CGPointMake(mainView.frame.size.width - 20, mainView.frame.size.height/2 + 25) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    
    
    [circlex2y3 moveToPoint:CGPointMake(20, mainView.frame.size.height - 20)];
    [circlex2y3 addArcWithCenter:CGPointMake(20, mainView.frame.size.height - 20) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    
    [circlex3y3 moveToPoint:CGPointMake(mainView.frame.size.width - 20, mainView.frame.size.height - 20)];
    [circlex3y3 addArcWithCenter:CGPointMake(mainView.frame.size.width - 20, mainView.frame.size.height - 20) radius:10 startAngle:0 endAngle:360 clockwise:YES];
    
    
    CAGradientLayer *gradient;
    gradient.startPoint = CGPointMake(20, 100);
    gradient.backgroundColor = [[UIColor blueColor] CGColor];

    
    [path stroke];
    layer = [CAShapeLayer layer];
    layer.path = [path CGPath];
    layer.strokeColor = [[UIColor blackColor] CGColor];
    layer.lineWidth = 1.0;
    layer.fillColor = [[UIColor clearColor]CGColor];
    [self.view.layer addSublayer:layer];
    randonNumber = arc4random()%8;
    NSLog(@"RANDOM NUMBER:%lu",randonNumber);
    CABasicAnimation *newAnimate = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [newAnimate setDuration:0.5];
    newAnimate.repeatCount = 10;
    [newAnimate setToValue:[NSNumber numberWithFloat:1.50]];
    [newAnimate setFromValue:[NSNumber numberWithFloat:0.0]];
    [newAnimate setAutoreverses:YES];
    [newAnimate setBeginTime:0.0];
    
    switch (randonNumber) {
        case 0:
            circleLayerx1y1 = [CAShapeLayer layer];
            circleLayerx1y1.path = [circlex1y1 CGPath];
            circleLayerx1y1.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx1y1.lineWidth = 3.0;
            circleLayerx1y1.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx1y1];
            [circleLayerx1y1 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 1:
            circleLayerx2y1 = [CAShapeLayer layer];
            circleLayerx2y1.path = [circlex2y1 CGPath];
            circleLayerx2y1.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx2y1.lineWidth = 3.0;
            circleLayerx2y1.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx2y1];
            [circleLayerx2y1 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 2:
            circleLayerx3y1 = [CAShapeLayer layer];
            circleLayerx3y1.path = [circlex3y1 CGPath];
            circleLayerx3y1.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx3y1.lineWidth = 3.0;
            circleLayerx3y1.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx3y1];
            [circleLayerx3y1 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 3:
            circleLayerx1y2 = [CAShapeLayer layer];
            circleLayerx1y2.path = [circlex1y2 CGPath];
            circleLayerx1y2.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx1y2.lineWidth = 3.0;
            circleLayerx1y2.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx1y2];
            [circleLayerx1y2 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 4:
            circleLayerx2y2 = [CAShapeLayer layer];
            circleLayerx2y2.path = [circlex2y2 CGPath];
            circleLayerx2y2.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx2y2.lineWidth = 3.0;
            circleLayerx2y2.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx2y2];
            [circleLayerx2y2 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 5:
            circleLayerx3y2 = [CAShapeLayer layer];
            circleLayerx3y2.path = [circlex3y2 CGPath];
            circleLayerx3y2.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx3y2.lineWidth = 3.0;
            circleLayerx3y2.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx3y2];
            [circleLayerx3y2 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 6:
            circleLayerx1y3 = [CAShapeLayer layer];
            circleLayerx1y3.path = [circlex1y3 CGPath];
            circleLayerx1y3.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx1y3.lineWidth = 3.0;
            circleLayerx1y3.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx1y3];
            [circleLayerx1y3 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 7:
            circleLayerx2y3 = [CAShapeLayer layer];
            circleLayerx2y3.path = [circlex2y3 CGPath];
            circleLayerx2y3.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx2y3.lineWidth = 3.0;
            circleLayerx2y3.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx2y3];
            [circleLayerx2y3 addAnimation:newAnimate forKey:@"opacity"];
            break;
        case 8:
            circleLayerx3y3 = [CAShapeLayer layer];
            circleLayerx3y3.path = [circlex3y3 CGPath];
            circleLayerx3y3.strokeColor = [[UIColor blackColor]CGColor];
            circleLayerx3y3.lineWidth = 3.0;
            circleLayerx3y3.fillColor = [[UIColor greenColor]CGColor];
            [self.view.layer addSublayer:circleLayerx3y3];
            [circleLayerx3y3 addAnimation:newAnimate forKey:@"opacity"];
            break;
        default:
            break;
        }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSArray *allTouches = [touches allObjects];
    NSInteger count = [allTouches count];
    
    total +=  count;
    CGPoint touchPoint = [[touches anyObject] locationInView:mainView];
    if (CGPathContainsPoint(circleLayerx1y1.path, nil, touchPoint, NO) && randonNumber == 0 && turns!= 3) {
        NSLog(@"CIRCLE X1Y1 TOUCHED!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx2y1.path, nil, touchPoint, NO) && randonNumber == 1 && turns!=3) {
        NSLog(@"CIRCLE X2Y1 TOUCHED!!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx3y1.path, nil, touchPoint, NO) && randonNumber == 2 && turns!=3) {
        NSLog(@"CIRCLE X3Y1 TOUCHED!!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx1y2.path, nil, touchPoint, NO) && randonNumber == 3 && turns!=3) {
        NSLog(@"CIRCLE X1Y2 TOUCHED!!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx2y2.path, nil, touchPoint, NO) && randonNumber == 4 && turns!=3) {
        NSLog(@"CIRCLE X2Y2 TOUCHED!!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx3y2.path, nil, touchPoint, NO) && randonNumber == 5 && turns!=3) {
        NSLog(@"CIRCLE X3Y2 TOUCHED!!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx1y3.path, nil, touchPoint, NO) && randonNumber == 6 && turns!=3) {
        NSLog(@"CIRCLE X1Y3 TOUCHED!!!");
        total --;
        turns++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx2y3.path, nil, touchPoint, NO) && randonNumber == 7 && turns!=3) {
        NSLog(@"CIRCLE X2Y3 TOUCHED!!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if (CGPathContainsPoint(circleLayerx3y3.path, nil, touchPoint, NO) && randonNumber == 8 && turns!=3) {
        NSLog(@"CIRCLE X3Y3 TOUCHED!!!");
        total --;
        turns ++;
        [self reloadInputViews];
    }
    if ((total > 3)) {
        UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"Result" message:@"Don't Drive!!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        alertView.alertViewStyle = UIAlertViewStyleDefault;
        [alertView show];
        total = 0;
        [self reloadInputViews];
    }
    if (turns == 3) {
        UIAlertView *successAlert = [[UIAlertView alloc]initWithTitle:@"Result" message:@"YAYY!! You can Drive!!!" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        successAlert.alertViewStyle = UIAlertViewStyleDefault;
        [successAlert show];
        turns = 0;
        [self reloadInputViews];
    }
    NSLog(@"TOUCHES:%ld",total);
    NSLog(@"TURNS:%ld",turns);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
