//
//  ViewController.m
//  Palindrome
//
//  Created by Hayden Goldman on 2/2/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction) verifyButtonPressed{

    Palindrome *palindrome = [[Palindrome alloc]init];
    
    BOOL isPalindrome = [palindrome isPalindrome:self.inputTextField.text];
    
    if (isPalindrome == YES){
        self.resultLabel.text = @"Palindrome";
    } else {
        self.resultLabel.text = @"Not a Palindrome";
    }

}

    
    
// Performs the completed task but does not include the the Palindrome class as required
/*
 
-(IBAction) verifyButtonPressed{
 
    NSString *input = self.inputTextField.text;
    NSMutableString *reversedString = [NSMutableString string];

    for (NSInteger i = input.length - 1; i >= 0; i--) {
        
        NSString *character = [input substringWithRange:NSMakeRange(i, 1)];
        [reversedString appendString:character];
    }

    if ([input isEqualToString:reversedString]){
        NSString *output = @"Palindrome";
        self.resultLabel.text = output;
        
    } else{
        NSString *output = @"Not Palindrome";
        self.resultLabel.text = output;
    }
}

*/
    


    



@end
