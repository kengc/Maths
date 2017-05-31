//
//  QuestionManager.h
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;

-(void)addToArrayQuestion:(AdditionQuestion *)additionQuestion;

@end
