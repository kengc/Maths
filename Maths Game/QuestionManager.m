//
//  QuestionManager.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addToArrayQuestion:(AdditionQuestion *)additionQuestion{
    if(_questions){
        [self.questions addObject:additionQuestion];
    }
}

@end
