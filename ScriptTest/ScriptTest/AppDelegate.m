

#import "AppDelegate.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.testModel = [[TestModel alloc] init];
    self.models = @[self.testModel];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
    
- (BOOL)application:(NSApplication *)sender delegateHandlesKey:(NSString *)key
{
    NSLog(@"THE KEY: %@", key);
    return [@"models" isEqualToString:key];
}


@end
