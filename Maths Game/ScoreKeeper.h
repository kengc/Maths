//
//  ScoreKeeper.h
//  Maths Game
//
//  Created by Kevin Cleathero on 2017-05-30.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) float rightAnswers;
@property (nonatomic) float wrongAnswers;

-(void)currentScore;

@end
