//
//  SubtractionQuestion.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion{
    
    NSInteger leftValue = super.leftValue;
    NSInteger rightValue = super.rightValue;
    
    NSString *lValue = [NSString stringWithFormat:@"%ld", (long)leftValue];
    NSString *rValue = [NSString stringWithFormat:@"%ld", (long)rightValue];
    NSString *stringMiddle = [lValue stringByAppendingString:@" - "];
    
    super.answer = leftValue - rightValue;
    super.question = [stringMiddle stringByAppendingString:rValue];

}

@end
