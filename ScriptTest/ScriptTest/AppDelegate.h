
#import <Cocoa/Cocoa.h>
#import "TestModel.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (nonatomic, strong) TestModel *testModel;
@property (nonatomic, strong) NSArray *testModels;
    
- (TestModel *)testModel;
- (void)setTestModel:(TestModel *)testModel;
@end

