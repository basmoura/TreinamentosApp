//
//  InstrutoresViewController.m
//  TreinaMobi
//
//  Created by Breno A. S. Moura on 8/3/13.
//  Copyright (c) 2013 Popcode Mobile Solutions. All rights reserved.
//

#import "InstrutoresViewController.h"
#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface InstrutoresViewController ()
@property NSString *fb, *tw, *lk;
@end


@implementation InstrutoresViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.image = [UIImage imageNamed:@"111-user"];
        self.tabBarItem.title = @"Instrutores";
    }
    return self;
}

- (id)initWithInstrutor:(NSDictionary *)instrutor
{
    self = [super init];
    if (self) {
        self.instrutor = instrutor;
        self.navigationItem.title = instrutor[@"curso"];
        
        self.view.backgroundColor = [UIColor colorWithRed:242 green:242 blue:244 alpha:1];
        int w = self.view.bounds.size.width;

        NSData *fotoUrl = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString:instrutor[@"foto"]]];
        UIImage *fotoRequest = [[UIImage alloc] initWithData:fotoUrl];
        UIImageView *foto = [[UIImageView alloc] initWithImage:fotoRequest];
        foto.frame = CGRectMake(80, 10, 150, 150);
        foto.layer.cornerRadius = 75;
        foto.layer.masksToBounds = YES;
        [self.view addSubview:foto];
        
        UILabel *nome = [[UILabel alloc] initWithFrame:CGRectMake(8, 160, 200, 25)];
        nome.text = instrutor[@"nome"];
        nome.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
        [nome setFont:[UIFont fontWithName:@"Verdana-Bold" size:18]];
        [self.view addSubview:nome];
        
        UILabel *curso = [[UILabel alloc] initWithFrame:CGRectMake(8, 180, 300, 20)];
        curso.text = instrutor[@"curso"];
        curso.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
        [curso setFont:[UIFont fontWithName:@"Verdana" size:14]];
        [self.view addSubview:curso];
        
        UITextView *descricao = [[UITextView alloc] initWithFrame:CGRectMake(0, 200, w, 160)];
        descricao.text = instrutor[@"descricao"];
        descricao.textAlignment = NSTextAlignmentJustified;
        [descricao setFont:[UIFont fontWithName:@"Verdana" size:12]];
        descricao.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
        [self.view addSubview:descricao];
        
        if (![instrutor[@"fb"] isEqual: @""]) {
            self.fb = instrutor[@"fb"];
            
            UIButton *btnFaceBook = [UIButton new];
            [btnFaceBook setImage:[UIImage imageNamed:@"fb.png"] forState:UIControlStateNormal];
            [btnFaceBook setFrame:CGRectMake(210, 165, 32, 32)];
            [btnFaceBook addTarget:self action:@selector(facebook) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:btnFaceBook];
        }
        
        if (![instrutor[@"tw"] isEqual: @""]) {
            self.tw = instrutor[@"tw"];
            
            UIButton *btnTwitter = [UIButton new];
            [btnTwitter setImage:[UIImage imageNamed:@"tw.png"] forState:UIControlStateNormal];
            [btnTwitter setFrame:CGRectMake(245, 165, 32, 32)];
            [btnTwitter addTarget:self action:@selector(twitter) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:btnTwitter];
        }
        
        if (![instrutor[@"lk"] isEqual: @""]) {
            self.lk = instrutor[@"lk"];
            
            UIButton *btnLinkedIn = [UIButton new];
            [btnLinkedIn setImage:[UIImage imageNamed:@"lin.png"] forState:UIControlStateNormal];
            [btnLinkedIn setFrame:CGRectMake(280, 165, 32, 32)];
            [btnLinkedIn addTarget:self action:@selector(linkedin) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:btnLinkedIn];
        }
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

- (IBAction)redeSocial:(UIButton *)sender
{

}

-(void) facebook
{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:_fb]];
}
-(void) twitter
{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:_tw]];
}
-(void) linkedin
{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:_lk]];
}
@end
