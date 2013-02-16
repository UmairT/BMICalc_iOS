//
//  UserDefaults.m
//  BMICalc
//
//  Created by Soroush Pour on 16/02/13.
//  Copyright (c) 2013 Soroush Pour. All rights reserved.
//

#import "UserDefaults.h"

@implementation UserDefaults

- (NSString*)retrieveFromUserDefaults:(NSString*)myKey {
    
    NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
    NSString* myVal = nil;
    
    if(standardUserDefaults) {
        myVal = [standardUserDefaults objectForKey:myKey];
    }
    
    return myVal;
}

- (BOOL)savetoUserDefaults:(NSString*)myVal asKey:(NSString*)myKey {
    
    NSUserDefaults *standardUserDefaults = [NSUserDefaults standardUserDefaults];
    
    if(standardUserDefaults) {
        [standardUserDefaults setObject:myVal forKey:myKey];
        [standardUserDefaults synchronize];
        
        return YES;
    }
    
    return NO;
    
}

@end
