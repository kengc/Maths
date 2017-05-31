//
//  QuestionManager.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "QuestionManager.h"

@interface QuestionManager()
  @property (nonatomic) NSMutableArray *questions;
@end

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addToArrayQuestion:(Question *)additionQuestion{
    if(_questions){
        [self.questions addObject:additionQuestion];
    }
}

-(NSString *)timeOutput{
  
    NSTimeInterval totalTimePerQuestion = 0.0;
    
    for (Question *question in self.questions){
        //total time = iterate thru and add up times
        //total time divded by total questions = average
        totalTimePerQuestion += question.answerTime;
    }
    NSTimeInterval averageTimeSeconds = totalTimePerQuestion / self.questions.count;
    //NSLog(@"It took %.f seconds to answer", averageTimeSeconds);
    NSString *t = @"Total Time: ";
    NSString *timePerQuestion = [NSString stringWithFormat:@"%.f", totalTimePerQuestion];
    NSString *totalTime = [t stringByAppendingString:timePerQuestion];
    
    NSString *aTime = @", Average Time: ";
    NSString *avTime = [NSString stringWithFormat:@"%.f", averageTimeSeconds];
    NSString *averageTime = [aTime stringByAppendingString:avTime];
    
    NSString *timeMessage = [totalTime stringByAppendingString:averageTime];

    return timeMessage;
}

@end
