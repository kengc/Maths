//
//  main.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
// To create a command line game called Maths that will generate a random addition question
// To prompt the user to input their answer
// To parse the user's inputted answer and convert it to a primitive NSInteger
// The app will log "Right!" for correct and "Wrong!" for incorrect answers
// The app will present the next question immediately after the app outputs the evaluation of the user's input (for now there's no exit option)
// To add the ability to exit the game
// To add a scoring function to the game
    
        int loop = 1;
        char inputChars[255];
        
        do{
            printf("Input a message: ");
            fgets(inputChars, 255, stdin);
            
            NSLog(@"your input is: %s", inputChars);
            
            NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            
            NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            
            NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
            
            NSLog(@"your input is: %@", trimmed);
            
        }while(loop == 1);
        
        
    }
    return 0;
}
