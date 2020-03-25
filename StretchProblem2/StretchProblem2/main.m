//
//  main.m
//  StretchProblem2
//
//  Created by Colby Harris on 3/24/20.
//  Copyright © 2020 Colby_Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReverseArrayClass : NSObject
-(NSArray *)reverseArray:(NSMutableArray *)arrayToReverse;

@end

@implementation ReverseArrayClass

- (NSArray *)reverseArray:(NSMutableArray *)arrayToReverse
{
    NSArray* reversedArray = [[arrayToReverse reverseObjectEnumerator] allObjects];
    return reversedArray;
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSArray *tempArray = @[@2, @3, @7, @12, @4, @6, @8, @9];
        
        NSArray *reversedArray;
        
        ReverseArrayClass *reverseArrayClass = [[ReverseArrayClass alloc]init];
        
        reversedArray = [reverseArrayClass reverseArray:tempArray];
        
        
        NSLog(@"%@", reversedArray);
        
       
    }
    return 0;
}
