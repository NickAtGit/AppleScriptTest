

#import "AppDelegate.h"
#import "TestModel.h"

@interface AppDelegate ()
@property (nonatomic, strong) TestModel *testModel;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.testModel = [[TestModel alloc] init];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
    
- (BOOL)application:(NSApplication *)sender delegateHandlesKey:(NSString *)key
{
    return [key isEqual:@"testmodelkey"];
}


@end
