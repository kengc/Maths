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
// To create a command line game called Maths that will generate a random addition question
// To prompt the user to input their answer
// To parse the user's inputted answer and convert it to a primitive NSInteger
// The app will log "Right!" for correct and "Wrong!" for incorrect answers
// The app will present the next question immediately after the app outputs the evaluation of the user's input (for now there's no exit option)
// To add the ability to exit the game
// To add a scoring function to the game
    
        //int loop = 1;
        //char inputChars[255];
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
