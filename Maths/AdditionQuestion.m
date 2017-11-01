//
//  AdditionQuestion.m
//  Maths
//
//  Created by Javier Xing on 2017-10-31.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

//Initializes the addition and answer properties. defines 2 random integers, and then initializes "addition" property with an NSString that logs the math question with the 2 random variables, and then initializes the "answer" property with the correct answer to the math question

- (instancetype)init
{
    self = [super init];
    if (self) {
        int random1 = arc4random_uniform(91)+10;
        int random2 = arc4random_uniform(91)+10;
        _addition = [NSString stringWithFormat:@" %d + %d = ?", random1, random2];
        _answer = random1 + random2;
    }
    return self;
}


@end
