//
//  main.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        do{
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            NSLog(@"question is: %@ ?", question.question);
            
            NSString *userInput = [InputHandler parseUserInput];
            
            if([userInput isEqualToString:@"quit"]){
                gameOn = NO;
                
            } else{
                
                NSInteger answer = [userInput integerValue]; //don't need * for NSInteger
                
                NSLog(@"answer is: %ld", (long)question.answer);
                score.totalQuestions += 1;
                if(answer == question.answer)
                {
                    score.rightAnswers += 1;
                    NSLog(@"Right!");
                } else{
                    score.wrongAnswers += 1;
                    NSLog(@"Wrong!");
                }
                [score currentScore];
                //NSLog(@"your input is: %@", trimmed);
            }
        }while(gameOn);
        
        
    }
    return 0;
}
