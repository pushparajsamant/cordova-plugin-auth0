#import <Cordova/CDV.h>
#import "SimpleKeychain.h"
@import Auth0;

@interface Auth0Plugin : CDVPlugin

// Extra
- (void)auth0Login:(CDVInvokedUrlCommand *)command;
- (void)auth0RefreshToken:(CDVInvokedUrlCommand *)command;
- (void)auth0Logout:(CDVInvokedUrlCommand *)command;

@end