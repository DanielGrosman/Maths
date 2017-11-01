//
//  ScoreKeeper.h
//  Maths
//
//  Created by Javier Xing on 2017-10-31.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic,assign) int numOfRights;
@property (nonatomic, assign) int numOfWrongs;

-(void)incrementRight;
-(void)incrementWrong;
-(NSString*) results;

@end
