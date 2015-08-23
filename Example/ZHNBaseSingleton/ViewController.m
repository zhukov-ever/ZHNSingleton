//
//  ViewController.m
//  ZHNBaseSingleton
//
//  Created by zhukovever on 8/05/2015.
//  Copyright (c) 2015 home. All rights reserved.
//

#import "ViewController.h"
#import "ChildSingleton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelForAwesomeString;

@end

@implementation ViewController

- (void)dealloc
{
    NSLog(@"%@", [ChildSingleton shared]);
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.labelForAwesomeString.text = [ChildSingleton shared].stringWithAwesomeString;
}

- (IBAction)awesomeHandler:(id)sender
{
    [[ChildSingleton shared] increaseAwesomeCounter];
    self.labelForAwesomeString.text = [ChildSingleton shared].stringWithAwesomeString;
}

@end
