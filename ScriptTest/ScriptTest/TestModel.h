

#import <Foundation/Foundation.h>

@interface TestModel : NSScriptCommand
@property (nonatomic, strong) NSString *objectID;
@property (nonatomic, strong) NSString *testString;
- (NSString *)testCallMethod:(NSScriptCommand *)command;
@end
