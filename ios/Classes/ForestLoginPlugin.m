#import "ForestLoginPlugin.h"
#import <forest_login/forest_login-Swift.h>

@implementation ForestLoginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftForestLoginPlugin registerWithRegistrar:registrar];
}
@end
