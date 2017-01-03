

#import "AppDelegate.h"

@interface AppDelegate ()
@end

@implementation AppDelegate
    
@synthesize testModel = _testModel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.testModel = [[TestModel alloc] init];
    self.testModels = @[self.testModel];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification
{
}
    
- (BOOL)application:(NSApplication *)sender delegateHandlesKey:(NSString *)key
{
    return [key isEqual:@"testModels"];
}
    
- (TestModel *)testModel
{
    return _testModel;
}

- (void)setTestModel:(TestModel *)testModel
{
    _testModel = testModel;
}

@end
