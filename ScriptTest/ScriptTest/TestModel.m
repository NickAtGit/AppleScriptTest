
#import "TestModel.h"
#import "AppDelegate.h"

@interface TestModel ()
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *objectID;
@end

@implementation TestModel

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.objectID = [[NSUUID UUID] UUIDString];
        self.title = @"TEST";
    }
    return self;
}
    
- (void)testCallMethod:(NSScriptCommand *)command
{
    NSLog(@"%@", command.evaluatedReceivers);
    self.title = @"modified string";
}
    
- (NSScriptObjectSpecifier *)objectSpecifier
{
    NSScriptObjectSpecifier *containerRef = nil;
    NSScriptObjectSpecifier *specifier = [[NSNameSpecifier alloc]
                                          initWithContainerClassDescription:[NSScriptClassDescription classDescriptionForClass:[NSApplication class]]
                                          containerSpecifier:containerRef
                                          key:@"testModels"
                                          name:self.objectID];
    
    return specifier;
}
    
@end
