
#import "TestModel.h"
#import "AppDelegate.h"

@implementation TestModel

- (instancetype)init
{
    self.objectID = [[NSUUID UUID] UUIDString];
    self.title = @"TEST";
    return self;
}
    
- (NSString *)testCallMethod:(NSScriptCommand *)command
{
    NSLog(@"%@", command.evaluatedReceivers);
    self.title = @"modified string";
    return @"TestMethodCalled";
}
    
- (NSScriptObjectSpecifier *)objectSpecifier
{
    NSScriptClassDescription *classDescription = (NSScriptClassDescription *) [[NSApplication sharedApplication] classDescription];
    
    NSUniqueIDSpecifier *specifier = [[NSUniqueIDSpecifier alloc] initWithContainerClassDescription:classDescription
                                                                                 containerSpecifier:nil
                                                                                                key:@"testmodel"
                                                                                           uniqueID:self.objectID];
    
    return specifier;
}
    
@end
