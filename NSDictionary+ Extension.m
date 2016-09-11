//
//  NSDictionary+Placeholder.m
//  ModularDigital_TW
//
//  Created by Sitthorn on 8/26/2559 BE.
//  Copyright © 2559 AMOS. All rights reserved.
//

#import "NSDictionary+Extension.h"
#import "NSString+Extension.h"

@implementation NSDictionary (Extension)
- (id)objectForKey:(NSString *)key withHolder:(id)holder{
    if ([self objectForKey:key]) {
        if ([[self objectForKey:key] isEqual:[NSNull null]]) {
            return holder;
        }
        id obj = [self objectForKey:key];
        if ([obj isKindOfClass:[holder class]]) {
            return obj;
        }else{
            if ([holder isKindOfClass:[NSString class]]) {
                return [NSString stringWithFormat:@"%@",obj];
            }else if ([holder isKindOfClass:[NSNumber class]]){
                return [[NSString stringWithFormat:@"%@",obj] numberFromString];
            }else if ([holder isKindOfClass:[NSArray class]]){
                return [NSArray arrayWithArray:obj];
            }else if ([holder isKindOfClass:[NSDictionary class]]){
                return [NSDictionary dictionaryWithDictionary:obj];
            }
            return obj;
        }
        
    }
    return holder;
}

- (NSString *)toJSONString{
    NSString *jsonString = @"";
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    if (jsonData) {
        jsonString = [[NSString alloc]initWithData:jsonData
                                           encoding:NSUTF8StringEncoding];
    }else {
        NSLog(@"Parsing error: %@", error);
    }
    
    return jsonString;
}

@end
