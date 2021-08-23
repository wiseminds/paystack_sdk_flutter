#import "PaystackSdkFlutterPlugin.h"
#if __has_include(<paystack_sdk_flutter/paystack_sdk_flutter-Swift.h>)
#import <paystack_sdk_flutter/paystack_sdk_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "paystack_sdk_flutter-Swift.h"
#endif

@implementation PaystackSdkFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPaystackSdkFlutterPlugin registerWithRegistrar:registrar];
}
@end
