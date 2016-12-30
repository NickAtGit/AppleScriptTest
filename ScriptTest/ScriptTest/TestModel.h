

#import <Foundation/Foundation.h>

@interface TestModel : NSScriptCommand
@property (nonatomic, strong) NSString *objectID;
@property (nonatomic, strong) NSString *title;
- (NSString *)testCallMethod:(NSScriptCommand *)command;
- (NSScriptObjectSpecifier *)objectSpecifier;
@end
