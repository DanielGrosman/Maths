//
//  ScoreKeeper.m
//  Maths
//
//  Created by Javier Xing on 2017-10-31.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

// Initializes the numOfRIghts and numOfWrongs properties to 0 to start the counter

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numOfRights = 0;
        _numOfWrongs = 0;
    }
    return self;
}

// when the incrementRIght or incrementWrong methods are called, increment the numOfRIghts and numofWrongs properties by 1

-(void) incrementRight{
    self.numOfRights++;
}

-(void) incrementWrong {
    self.numOfWrongs++;
}

// Calculates the grade, and creates a string that logs the number of rights, number or wrongs, and the grade

-(NSString*)results{
    float grade = (self.numOfRights)*100/(self.numOfWrongs + self.numOfRights);
    NSString *results = [NSString stringWithFormat:@"Score: %d right, %d wrong ---- %f%%", self.numOfRights, self.numOfWrongs, grade];
    
    return results;
}


@end
