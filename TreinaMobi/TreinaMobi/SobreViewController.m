//
//  SobreViewController.m
//  TreinaMobi
//
//  Created by Breno A. S. Moura on 8/3/13.
//  Copyright (c) 2013 Popcode Mobile Solutions. All rights reserved.
//

#import "SobreViewController.h"

@interface SobreViewController ()

@end

@implementation SobreViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"140-gradhat"];
        self.tabBarItem.title = @"Sobre";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
