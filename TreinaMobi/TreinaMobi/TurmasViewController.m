//
//  TurmasViewController.m
//  TreinaMobi
//
//  Created by Breno A. S. Moura on 8/3/13.
//  Copyright (c) 2013 Popcode Mobile Solutions. All rights reserved.
//

#import "TurmasViewController.h"

@interface TurmasViewController ()

@end

@implementation TurmasViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"112-group"];
        self.tabBarItem.title = @"Turmas";
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
