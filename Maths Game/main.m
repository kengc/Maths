//
//  main.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questions = [[QuestionManager alloc] init];
        QuestionFactory *qFactory = [[QuestionFactory alloc] init];
        
        
        do{
            Question *question = [[Question alloc] init];
            
            //Question *questionType = qFactory.generateRandomQuestion;
            
            question = qFactory.generateRandomQuestion;
            
            
            //NSLog(@"this is the questionfactory%ld", (long)questionType.answer);
            
            
            [questions addToArrayQuestion:question];
            
            NSLog(@"question is: %@ ?", question.question);
            
            NSString *userInput = [InputHandler parseUserInput];
            
            if([userInput isEqualToString:@"quit"]){
                gameOn = NO;
                
            } else{
                
                [question answerTime];
                NSInteger answer = [userInput integerValue]; //don't need * for NSInteger
                
                NSLog(@"answer is: %ld", (long)question.answer);
                NSLog(@"%@", [questions timeOutput]);
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
