//
//  ViewController.m
//  ZHNBaseSingleton
//
//  Created by vi on 8/05/2015.
//  Copyright (c) 2015 home. All rights reserved.
//

#import "ViewController.h"
#import "ChildSingleton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelForAwesomeString;

@end

@implementation ViewController

- (IBAction)awesomeHandler:(id)sender
{
    self.labelForAwesomeString.text = [ChildSingleton shared].stringWithAwesomeString;
}

@end
