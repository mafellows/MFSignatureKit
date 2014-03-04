//
//  MFSignatureView.h
//  MFSignatureKit
//
//  Created by Michael Fellows on 3/4/14.
//  Copyright (c) 2014 Michael Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFSignatureView : UIView

/*
 *  Customize the background color, line width, and line color with
 *  these three properties. 
 */
@property UIColor *bgColor;
@property UIColor *lineColor; 
@property NSInteger lineWidth;

// Public access to the path allows you to clear when needed.
@property (nonatomic, strong) UIBezierPath *path;
@end
