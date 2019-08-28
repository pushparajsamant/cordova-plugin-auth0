#import "Auth0.h"
#import "SimpleKeychain.h"
#import "nib-Swift.h"
@import Auth0;

@interface Auth0Plugin()

@end

@implementation Auth0Plugin

- (void)pluginInitialize {
    NSLog(@"Auth0 Init");
    HybridAuth *auth = [[HybridAuth alloc] init];
    A0SimpleKeychain *keychain = [[A0SimpleKeychain alloc] initWithService:@"Auth0"];
}
-(NSDictionary*)convertResponse:(A0Credentials*) credentials {
    NSMutableDictionary *_result = [[NSMutableDictionary alloc] init];
    [_result setValue:[NSString stringWithFormat:@"%@", [[credentials.accessToken objectForKey:@"accessToken"] doubleValue]] forKey:@"accessToken"];
    [_result setValue:[NSString stringWithFormat:@"%@", [[credentials.idToken objectForKey:@"idToken"] doubleValue]] forKey:@"idToken"];
    return _result;
}
- (void)saveCredentials:(A0Credentials *) credentials {
    A0SimpleKeychain *keychain = [[A0SimpleKeychain alloc] initWithService:@"Auth0"];
    [keychain setString:[credentials accessToken] forKey:@"access_token"];
    [keychain setString:[credentials refreshToken] forKey:@"refresh_token"];
}
/*
- key
- secret
- environment
- success_cb
- error_cb
 */
- (NSString)auth0Login:(CDVInvokedUrlCommand *)command {
    __block CDVPluginResult *pluginResult = nil;
    @try {
        NSLog(@"Auth0 login called");
        [auth showLoginWithScope:@"openid profile offline_access" connection:nil callback:^(NSError * _Nullable error, A0Credentials * _Nullable credentials) {
            if (error) {
                NSLog(@"Error: %@", error.localizedDescription);
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
                [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            } else {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self saveCredentials:credentials];
                });
                NSDictionary *obj = [self convertResponse credentials];
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:obj];
                [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            }
        }];
    } @catch (NSException *exception) {
        NSLog(@"%@", exception.reason);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}


