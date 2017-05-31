//
//  QuestionFactory.h
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "Question.h"

@interface QuestionFactory : Question

-(Question *)generateRandomQuestion;

@property (nonatomic) NSArray *questionSubclassNames;

@end
