//
//  RandomStringHelper.m
//
//  Created by Yuttana Kungwon on 12/23/2557 BE.
//  Copyright (c) 2013 Yuttana K. All rights reserved.
//

#import "RandomStringHelper.h"

@implementation RandomStringHelper

+ (NSString *)generateStringWithLength:(int)len
{
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *randStr = [NSMutableString stringWithCapacity:len];
    for (int i = 0; i < len; i++) {
        [randStr appendFormat:@"%C", [letters characterAtIndex:arc4random_uniform((int)[letters length])]];
    }
    return randStr;
}

@end
