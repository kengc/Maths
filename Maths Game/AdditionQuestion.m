//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];  //instantiate base object NSObject
    if (self) {
        //now do additonQuestion stuff
        _randomOne = arc4random_uniform(90) + 10; //returns an integer between 0 and the upper bound you pass it.
        _randomTwo = arc4random_uniform(90) + 10;
        NSString *stringBeginning = [NSString stringWithFormat:@"%ld", _randomOne];
        NSString *stringEnd = [NSString stringWithFormat:@"%ld", _randomTwo];
        
        NSString *stringMiddle = [stringBeginning stringByAppendingString:@" + "];
        _question = [stringMiddle stringByAppendingString:stringEnd];
        
        
        long sum = _randomOne + _randomTwo;
        _answer = sum;
    }
    return self; //return an instance of an additionquestion
}


@end
