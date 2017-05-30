//
//  InputHandler.m
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)parseUserInput{
    char inputChars[255];
    
    NSLog(@"Answer? ");
    fgets(inputChars, 255, stdin);
    
    //NSLog(@"your input is: %s", inputChars);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    return trimmed;
}

@end
