//
//  Palindrome.m
//  Palindrome
//
//  Created by Hayden Goldman on 2/2/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "Palindrome.h"

@implementation Palindrome


-(BOOL) isPalindrome: (NSString*) inputWord{
    
    
    NSString *input = inputWord;
    NSMutableString *reversedString = [NSMutableString string];
    
    for (NSInteger i = input.length - 1; i >= 0; i--) {
        
        NSString *character = [input substringWithRange:NSMakeRange(i, 1)];
        [reversedString appendString:character];
    }    
    
    if ([input isEqualToString:reversedString]){
        return YES;
    } else{
        return NO;
    }
}


@end

