//
//  BaseViewController.m
//  MFSignatureKit
//
//  Created by Michael Fellows on 3/4/14.
//  Copyright (c) 2014 Michael Fellows. All rights reserved.
//

#import "BaseViewController.h"
#import "MFSignatureView.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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
    
    MFSignatureView *signatureView = [[MFSignatureView alloc] initWithFrame:self.view.frame];
    signatureView.lineColor = [UIColor blackColor];
    signatureView.lineWidth = 3;
    signatureView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:signatureView]; 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
