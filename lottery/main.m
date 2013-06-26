//
//  main.m
//  lottery
//
//  Created by 楚 乔 on 13-5-17.
//  Copyright (c) 2013年 楚 乔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "lotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [[NSDate alloc]init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSDateComponents *weekCom = [[NSDateComponents alloc]init];
        srandom((unsigned)time(NULL));
        
        NSMutableArray * array;
        array = [[NSMutableArray alloc]init];
        int i ;
        for (i=0; i<10; i++) {
            [weekCom setWeek:i];
            NSDate *iweekFromNow = [cal dateByAddingComponents:weekCom toDate:now options:0];
            lotteryEntry *newEntry = [[lotteryEntry alloc]initWithDate:iweekFromNow];
            
            [array addObject:newEntry];
            [newEntry release];
        }
        [now release];
        [weekCom release];
        for (lotteryEntry *entryToPoint in array) {
            NSLog(@"%@",entryToPoint);
            NSLog(@"%d",[entryToPoint firstNum]);

        }
        
        [array release];
    }
    return 0;
}

