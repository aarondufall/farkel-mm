//
//  DieLabel.h
//  Farkle
//
//  Created by Aaron Dufall on 19/03/2014.
//  Copyright (c) 2014 Aaron Dufall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabelDelegate.h"


@interface DieLabel : UILabel

@property id <DieLabelDelegate> delegate;

-(void)roll;

@end
