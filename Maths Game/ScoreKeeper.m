//
//  ScoreKeeper.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)currentScore{
  
    if(_wrongAnswers != 0.0 && _rightAnswers != 0.0){
        float p = _wrongAnswers / _rightAnswers;
        float percent = p * 100;
        NSLog(@"Score: %.0f right, %.0f wrong ----- %.1f%%", _rightAnswers, _wrongAnswers, percent);

    } else if (_wrongAnswers == 0.0 && _rightAnswers != 0.0){
        NSLog(@"Score: %.0f right, %.0f wrong ----- 100%%", _rightAnswers, _wrongAnswers);
    } else if (_wrongAnswers != 0.0 && _rightAnswers == 0.0){
        NSLog(@"Score: %.0f right, %.0f wrong ----- 0%%", _rightAnswers, _wrongAnswers);
    }
}

@end
