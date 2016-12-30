
#import <Cocoa/Cocoa.h>
#import "TestModel.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (nonatomic, strong) TestModel *testModel;
@property (nonatomic, strong) NSArray *models;

@end

