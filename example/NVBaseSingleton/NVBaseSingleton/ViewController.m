//
//  ViewController.m
//  NVBaseSingleton
//
//  Created by Zhn on 8/02/2015.
//  Copyright (c) 2015 Zhn. All rights reserved.
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
