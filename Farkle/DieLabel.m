//
//  DieLabel.m
//  Farkle
//
//  Created by Aaron Dufall on 19/03/2014.
//  Copyright (c) 2014 Aaron Dufall. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(IBAction)labelWasTapped:(id)sender
{
    [self.delegate didChooseDie:self];
}

-(void)roll
{
    self.text = [NSString stringWithFormat:@"%d", arc4random_uniform(6) + 1];
}

@end
