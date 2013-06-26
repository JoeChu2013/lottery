//
//  lotteryEntry.m
//  lottery
//
//  Created by 楚 乔 on 13-5-20.
//  Copyright (c) 2013年 楚 乔. All rights reserved.
//

#import "lotteryEntry.h"

@implementation lotteryEntry

-(NSString*)description{
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    [df setDateFormat:[[NSString alloc]initWithFormat:@"yyyy-mm-dd hh:MM:ss"]];
    NSString *result;
    result = [[NSString alloc]initWithFormat:@"%@=%d and %d",[df stringFromDate:entryDate],firstNum,secondNum];
    [result autorelease];
    [df autorelease];
    return result;
}
-(id)init{
    return [self initWithDate:[NSDate date]];
}

-(id)initWithDate:(NSDate*) nowDate{
    self = [super init];
    if (self) {
        entryDate = [nowDate retain];
        firstNum = ((int)random()%100)+1;
        secondNum = ((int)random()%100)+1;
    }
    return self;
}

-(void)dealloc{
    NSLog(@"deallocing %@",self);
    [entryDate release];
    [super dealloc];
}

-(void)setEntryDate:(NSDate *)date{
    entryDate = date;
}

-(NSDate*)entryDate{
    return entryDate;
}
-(int)firstNum{
    return firstNum;
}

-(int)secondnNum{
    return secondNum;
}

@end
