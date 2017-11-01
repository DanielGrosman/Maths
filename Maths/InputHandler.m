//
//  InputHandler.m
//  Maths
//
//  Created by Javier Xing on 2017-10-31.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
// The Q&A method takes a string from the user, converts it from a C string to objective C and parses it

+(NSString *)QandA {
    
    char answerNumber[5];
    fgets(answerNumber, 5, stdin);
    NSString *inputAnswer = [NSString stringWithUTF8String:answerNumber];
    NSString *parsedInputAnswer = [inputAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return parsedInputAnswer;
}

@end
