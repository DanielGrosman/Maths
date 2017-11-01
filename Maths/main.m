//
//  main.m
//  Maths
//
//  Created by Javier Xing on 2017-10-31.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
// The BOOL is defined and set to YES. This way, we can say that the program only runs while the BOOL is set to yes. It allows us to later exit the loop by setting the BOOL to NO if the user types 'quit' into the program.
        
        BOOL gameOn = YES;
        
// The ScoreKeeper needs to be initialized outside of the while loop. The numOfRIghts and numOfWrongs counters are set to 0 to begin with. If they were inside the loop, they would reset to 0 at the beginning of every loop
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        
        while(gameOn){
        
// Creates an instance object of the class AdditionQuestion called "question". Logs out the 'addition' method on the question object
        
        AdditionQuestion *question = [[AdditionQuestion alloc]init];
        NSLog(@"\nWhat is the answer to: %@ \n", [question addition]);
       
// Creates an NSString called inputAnswer which runs the Class method Q&A from the InputHandler class, which takes a string from the user (fget) as an answer to the math question (converts it from a C string and parses it as well). The reason why this class doesnt need to be initialized is because it uses a Class Method
        
        NSString *inputAnswer = [InputHandler QandA];
        
// If the user types 'quit', the BOOL gameOn changes to No, and the 'while' loop is no longer true, exiting the loop and ending the program. Otherwise, continue the loop.
           
            if ([inputAnswer isEqualToString:@"quit"]){
                gameOn = NO;
                continue;
            }
            
// If the answer is not 'quit', then convert the answer, which is currently a string, into an integer so the program can check if it's the right answer to the question
            
            else{
                NSInteger answer = [inputAnswer integerValue];
           
// if the answer is equal to the correct answer that is defined in the answer method of the 'question' instance of the AdditionQuestion class, log 'Right' and execute the 'incrementRight' method of the scoreKeeper class
            
                if (answer == [question answer]){
                    NSLog(@"Right!");
                [scoreKeeper incrementRight];
                }
                
// if the answer is wrong, print wrong and execute the 'incrementWrong' method of the scoreKeeper class
            
                else{
                    NSLog(@"Wrong!");
                [scoreKeeper incrementWrong];
            }
        }
            
// print out the results of the execution of the 'results' method of the scoreKeeper class
            NSLog(@"%@", [scoreKeeper results]);
            
        }
    }
    return 0;
}
