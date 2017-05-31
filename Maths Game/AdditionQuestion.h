//
//  AdditionQuestion.h
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;

@property (nonatomic) long randomOne;
@property (nonatomic) long randomTwo;

@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

- (NSTimeInterval)answerTime;
- (NSInteger)answer;

@end
