#import "RestwpPlugin.h"
#if __has_include(<restwp/restwp-Swift.h>)
#import <restwp/restwp-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "restwp-Swift.h"
#endif

@implementation RestwpPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRestwpPlugin registerWithRegistrar:registrar];
}
@end
