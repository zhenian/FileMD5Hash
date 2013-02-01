//
//  MainViewController.m
//  FileMD5HashDemo
//
//  Created by jun on 13-2-1.
//  Copyright (c) 2013年 zhenian.com. All rights reserved.
//

#import "MainViewController.h"
#import "FileMD5Hash.h"

@interface MainViewController ()

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
    UILabel *info = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 80.0)];
    info.text = @"the test file [test.txt] was created in os x like: ";
    [self.view addSubview:info];
    
    UIImageView *img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"filemd5.png"]];
    img.frame = CGRectMake(0.0, 80.0, 320.0, 124.0);
    [self.view addSubview:img];
    

    UILabel *md5info = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 204.0, 320.0, 80.0)];
    [self.view addSubview:md5info];
    md5info.numberOfLines = 0;
    md5info.lineBreakMode = NSLineBreakByClipping;
    md5info.text = [NSString stringWithFormat:@" md5 by FileMD5Hash is %@",[FileMD5Hash computeMD5HashOfFileInPath:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"test.txt"]]];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
