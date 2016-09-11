//
//  NSDictionary+Placeholder.h
//  ModularDigital_TW
//
//  Created by Sitthorn on 8/26/2559 BE.
//  Copyright © 2559 AMOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Extension)
- (id)objectForKey:(NSString *)key withHolder:(id)holder;
- (NSString *)toJSONString;
@end
