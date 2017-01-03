
#define	scriptLoggingMasterSwitch	( 1 )

#if scriptLoggingMasterSwitch
#define SLOG(format,...) NSLog( @"SLOG: File=%s line=%d proc=%s " format, strrchr("/" __FILE__,'/')+1, __LINE__, __PRETTY_FUNCTION__, ## __VA_ARGS__ )
#else
#define SLOG(format,...)
#endif

#import "TestModel.h"
#import "AppDelegate.h"

@interface TestModel ()
{
    NSString *_objectID;
    NSString *_title;
}
@end

@implementation TestModel
  
//@synthesize testString = _testString;
//@synthesize objectID = _objectID;

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _objectID = [[NSUUID UUID] UUIDString];
        _title = @"TEST";
    }
    return self;
}
    
- (void)testCallMethod:(NSScriptCommand *)command
{
    NSLog(@"%@", command.evaluatedReceivers);
    self.title = @"modified string";
}
    
- (void)setTitle:(NSString *)title
{
    _title = title;
}
    
- (NSString *)title
{
    return _title;
}
    
- (NSString *)objectID
{
    return _objectID;
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
    
- (id)valueForKey:(NSString *)key
{
    if ([key isEqualToString:@"title"])
    {
        return _title;
    }
    
    return @"FUCKED IT UP";
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"title"])
    {
        _title = value;
    }
}
    
@end
