//
//  InstrutoresViewController.h
//  TreinaMobi
//
//  Created by Breno A. S. Moura on 8/3/13.
//  Copyright (c) 2013 Popcode Mobile Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstrutoresViewController : UIViewController
- (id)initWithInstrutor:(NSDictionary *)instrutor;

@property (strong, nonatomic) NSDictionary *instrutor;
@end
