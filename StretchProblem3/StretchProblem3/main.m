//
//  main.m
//  StretchProblem3
//
//  Created by Colby Harris on 3/25/20.
//  Copyright © 2020 Colby_Harris. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       NSArray *array = @[@"1", @"8", @"3", @"2", @"9", @"4",@"13"];
        
        
        NSArray *sortedArray = [array sortedArrayUsingComparator: ^NSComparisonResult(NSString *int1, NSString *int2){
            return [int1 compare: int2 options: NSNumericSearch];
        }];
        
        NSLog(@"The Second Highest Number in the array is: %@, The Highest Number in the array is: %@", sortedArray[array.count - 2], sortedArray[array.count - 1]);
    }
    return 0;
}
