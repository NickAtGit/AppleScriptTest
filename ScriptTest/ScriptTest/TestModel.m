
#import "TestModel.h"
#import "AppDelegate.h"

@implementation TestModel

- (instancetype)init
{
    self.objectID = [[NSUUID UUID] UUIDString];
    self.testString = @"TEST";
    return self;
}
    
- (NSString *)testCallMethod:(NSScriptCommand *)command
{
    NSLog(@"%@", command.evaluatedReceivers);
    self.testString = @"modified string";
    return @"TestMethodCalled";
}
    
- (NSScriptObjectSpecifier *)objectSpecifier
{
    NSScriptObjectSpecifier *containerRef = nil;
    NSScriptObjectSpecifier *specifier = [[NSNameSpecifier alloc]
                                          initWithContainerClassDescription:[NSScriptClassDescription classDescriptionForClass:[NSApp class]]
                                          containerSpecifier:containerRef
                                          key:@"testmodelkey"
                                          name:self.objectID];
    
    return specifier;
}
    
@end
