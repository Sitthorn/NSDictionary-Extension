# NSDictionary-Extension

Extension for NSDictionary to do more with NSDictionary

## No more nil value 
`objectForKey: withHolder:` 
**This Extension**  made to provide method to retrieve `objectForKey:` 
by passing *Holder* to method `objectForKey: withHolder:` 
in case that the key you want does not exits this method will return *Holder* instead of nil value
*Note*
 - The returned object will be forced to be the same class as Holder
 - *Holder* must be object based variable 
 
```
    NSDictionary *objects = @{@"x":@"xxx",@"y":@"yyy"};
    NSString *output1 = [objects objectForKey:@"z"];
    NSLog(@"Output 1: %@",output1); //Output 1: (null)
    NSString *output2 = [objects objectForKey:@"z" withHolder:@"zzz"];
    NSLog(@"Output 2: %@",output2); //Output 2: zzzz
```

## Easy way to turn NSDictionary to JSON string
`- (NSString *)toJSONString;` 
**Pretty Print JSON** from NSDictionary
```
    NSDictionary *objects = @{@"x":@"xxx",@"y":@"yyy"};
    NSString *jsonString = [objects toJSONString];
```
Output
```
JSON: {
  "x" : "xxx",
  "y" : "yyy"
}
```
