//
//  LDExchangeAlgorithm.m
//  Amusing
//
//  Created by yl-yin on 2019/6/21.
//  Copyright © 2019 Li. All rights reserved.
//

#import "LDExchangeAlgorithm.h"

//#define LDOriginLetterAndNumberArray @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0",@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"]

#define LDOriginLetterAndNumberArray @[@"x",@"1",@"6",@"w",@"7",@"Y",@"9",@"W",@"0",@"P",@"a",@"Q",@"X",@"R",@"v",@"S",@"I",@"K",@"k",@"l",@"U",@"f",@"g",@"h",@"N",@"O",@"m",@"q",@"r",@"V",@"s",@"t",@"u",@"y",@"L",@"G",@"z",@"B",@"E",@"D",@"F",@"Z",@"b",@"J",@"2",@"A",@"4",@"M",@"T",@"i",@"3",@"j",@"c",@"C",@"8",@"d",@"n",@"o",@"5",@"p",@"e",@"H"]


@implementation LDExchangeAlgorithm
static NSUInteger LDExchangeKey = 2;

+ (NSString *)encrypt:(NSString *)input {
    NSAssert([self isOnlyNumberAndLetter:input], @"参数不正确");
    NSString *resultString = @"";
    for (int i = 0; i<input.length; i++) {
        NSString *tmp = [input substringWithRange:NSMakeRange(i, 1)];
        NSInteger index = [LDOriginLetterAndNumberArray indexOfObject:tmp];
        if (i%2 == 0) {
            index += (i+1)*LDExchangeKey;
        }else{
            index -= (i+1)*LDExchangeKey;
        }
        index = [self legalIndex:index];
        resultString = [resultString stringByAppendingString:LDOriginLetterAndNumberArray[index]];
    }
    return resultString;
}
+ (NSString *)decrypt:(NSString *)input {
    NSAssert([self isOnlyNumberAndLetter:input], @"参数不正确");
    NSString *resultString = @"";
    for (int i = 0; i<input.length; i++) {
        NSString *tmp = [input substringWithRange:NSMakeRange(i, 1)];
        NSInteger index = [LDOriginLetterAndNumberArray indexOfObject:tmp];
        if (i%2 == 0) {
            index -= (i+1)*LDExchangeKey;
        }else{
            index += (i+1)*LDExchangeKey;
        }
        index = [self legalIndex:index];
        resultString = [resultString stringByAppendingString:LDOriginLetterAndNumberArray[index]];
    }
    return resultString;
}

+ (void)setEncryptKey:(NSUInteger)key {
    LDExchangeKey = key;
}


+ (NSInteger)legalIndex:(NSInteger)index {
    NSInteger totalCount = LDOriginLetterAndNumberArray.count;
    NSInteger remainder = index%totalCount;
    if (remainder < 0) {
        return totalCount + remainder;
    } else {
        return remainder;
    }
}
+ (BOOL)isOnlyNumberAndLetter:(NSString *)input {
    NSString *regex =@"[a-zA-Z0-9]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:input]) {
        return YES;
    }
    return NO;
}
@end
