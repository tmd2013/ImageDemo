//
//  MenuItem.h
//  DrawImageDemo
//
//  Created by nonoking on 2017/8/7.
//  Copyright © 2017年 nonoking. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

/**title*/
@property(nonatomic,copy)NSString *title;

/**toVc*/
@property(nonatomic,copy)NSString *toVc;

+ (NSArray *)getItems;

@end
