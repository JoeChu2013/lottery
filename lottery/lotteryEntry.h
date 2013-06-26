//
//  lotteryEntry.h
//  lottery
//
//  Created by 楚 乔 on 13-5-20.
//  Copyright (c) 2013年 楚 乔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lotteryEntry : NSObject{
    NSDate *entryDate;
    int firstNum;
    int secondNum;
}

-(id)initWithDate:(NSDate*) nowDate;
-(void)setEntryDate:(NSDate*) date;
-(NSDate*)entryDate;
-(int)firstNum;
-(int)secondnNum;
@end
