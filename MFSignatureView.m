//
//  MFSignatureView.m
//  MFSignatureKit
//
//  Created by Michael Fellows on 3/4/14.
//  Copyright (c) 2014 Michael Fellows. All rights reserved.
//

#import "MFSignatureView.h"

@interface MFSignatureView () {
    CGPoint previousPoint;
}

@property (nonatomic, strong) UIBezierPath *path;

@end

@implementation MFSignatureView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialize path
        self.path = [UIBezierPath bezierPath];
        
        // Initialize line properties
        self.lineWidth = 2;
        self.lineColor = [UIColor blackColor];
        
        // Set background color of view
        self.bgColor = [UIColor whiteColor];
        self.backgroundColor = self.bgColor;
        
        // Capture user touches
        UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                        action:@selector(screenTouched:)];
        [panRecognizer setMaximumNumberOfTouches:1];
        [panRecognizer setMinimumNumberOfTouches:1];
        [self addGestureRecognizer:panRecognizer];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [[UIColor blackColor] setStroke];
    [self.path stroke];
    self.path.lineWidth = self.lineWidth;
}

// Lazy instantiation of path
//- (void)setPath:(UIBezierPath *)path
//{
//    if (!_path) {
//        _path = [UIBezierPath bezierPath];
//    }
//}

#pragma mark - Selector

- (void)screenTouched:(UIGestureRecognizer *)panRecognizer
{
    CGPoint currentPoint = [panRecognizer locationInView:self];
    CGPoint midPoint = [self midPointBetween:currentPoint and:previousPoint];
    
    if (panRecognizer.state == UIGestureRecognizerStateBegan) {
        [self.path moveToPoint:currentPoint];
    } else if (panRecognizer.state == UIGestureRecognizerStateChanged) {
        [self.path addQuadCurveToPoint:midPoint controlPoint:previousPoint];
    }
    previousPoint = currentPoint;
    [self setNeedsDisplay];
}

#pragma mark - Helper Method

- (CGPoint)midPointBetween:(CGPoint)p0 and:(CGPoint)p1
{
    return (CGPoint) { (p0.x + p1.x) / 2.0,
                       (p0.y + p1.y) / 2.0 };
}


@end
