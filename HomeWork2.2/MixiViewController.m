//
//  MixiViewController.m
//  HomeWork2.2
//
//  Created by ozeppi on 2013/04/21.
//  Copyright (c) 2013年 ozeppi. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()

@end

@implementation MixiViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = [NSString stringWithFormat:@"%d", [self.navigationController.viewControllers count]];

    UIBarButtonItem *pushButton = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(pressPushButton)];
    self.navigationItem.rightBarButtonItem = pushButton;

    if(self.navigationController.viewControllers.count > 1){
        UIBarButtonItem *popButton = [[UIBarButtonItem alloc] initWithTitle:@"pop" style:UIBarButtonItemStylePlain target:self action:@selector(pressPopButton)];
        self.navigationItem.leftBarButtonItem = popButton;
        self.navigationItem.leftItemsSupplementBackButton = YES;

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pressPushButton
{
    [self.navigationController pushViewController:[[MixiViewController alloc] init] animated:YES];
}

- (void)pressPopButton
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
