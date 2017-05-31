//
//  AdditionQuestion.h
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;

@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;

@property (nonatomic) long randomOne;
@property (nonatomic) long randomTwo;

@property (nonatomic) NSDate *startTime;

-(void)setQuestion:(NSString *)question;
-(void)setAnswer:(NSInteger)answer;
-(void)generateQuestion;

- (NSTimeInterval)answerTime;
//- (NSInteger)getAnswer;


@end
