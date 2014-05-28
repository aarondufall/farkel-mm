//
//  ViewController.m
//  Farkle
//
//  Created by Aaron Dufall on 19/03/2014.
//  Copyright (c) 2014 Aaron Dufall. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"
#import "DieLabelDelegate.h"

@interface ViewController ()<DieLabelDelegate>

@property NSMutableArray *dice;
@property (weak, nonatomic) IBOutlet UILabel *userScoreLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    for (DieLabel *die in self.view.subviews) {
        if ([die isKindOfClass:[DieLabel class]]) {
            die.delegate = self;
        }
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onRollButtonPressed:(id)sender {
    for (DieLabel *die in self.view.subviews) {
        if ([die respondsToSelector:@selector(roll)] && ![self.dice containsObject:die]) {
            [die roll];
        }
    }
}

-(void)didChooseDie:(DieLabel *)dieLabel
{
    dieLabel.backgroundColor = [UIColor grayColor];
    if (!self.dice) {
        self.dice = [[NSMutableArray alloc]init];
    }
    [self.dice addObject:dieLabel];
}

@end
