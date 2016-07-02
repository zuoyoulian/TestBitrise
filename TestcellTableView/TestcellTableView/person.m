//
//  person.m
//  TestcellTableView
//
//  Created by 左建军 on 14-9-23.
//  Copyright (c) 2014年 com.lanou3g. All rights reserved.
//

#import "person.h"

@implementation person

-(id)copyWithZone:(NSZone *)zone
{
    person *p = [[person alloc] init];
    
    p.name = [self.name copy];
    
    return p;
}

@end
