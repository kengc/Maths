//
//  ScoreKeeper.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightAnswers = 0;
        _wrongAnswers = 0;
        _totalQuestions = 0;
    }
    return self;
}

-(void)currentScore{

    if(_rightAnswers != 0){
        float p = _totalQuestions - _rightAnswers;
        float percentage = p / _totalQuestions;
        float percent = percentage * 100;
        NSLog(@"Score: %.0f right, %.0f wrong ----- %.1f%%", _rightAnswers, _wrongAnswers, percent);
    } else {
        NSLog(@"Score: %.0f right, %.0f wrong ----- 0%%", _rightAnswers, _wrongAnswers);
    }    
}

@end
