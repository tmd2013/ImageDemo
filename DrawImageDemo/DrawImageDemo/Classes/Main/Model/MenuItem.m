//
//  MenuItem.m
//  DrawImageDemo
//
//  Created by nonoking on 2017/8/7.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem

+ (NSArray *)getItems
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"menuList" ofType:@"plist"];
    NSArray *items = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *itemsM = [NSMutableArray arrayWithCapacity:items.count];
    for (NSDictionary *dict in items) {
        MenuItem *item = [[MenuItem alloc]init];
        [item setValuesForKeysWithDictionary:dict];
        [itemsM addObject:item];
    }
    
    
    return [itemsM copy];
}
@end
