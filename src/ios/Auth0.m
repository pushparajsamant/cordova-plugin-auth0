#import <Cordova/CDV.h>
@import MyFiziqSDK;

@interface Auth0Plugin : CDVPlugin <MyFiziqSDKDelegate>

// MyFiziqSDK
- (void)mfzSdkSetup:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkAnswerLogins:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkInitiateAvatarCreation:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkStatusConnection:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkStatusVersion:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkAppId:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkVendorId:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkClientId:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkEnv:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkCognitoUserPoolId:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkCognitoUserPoolRegion:(CDVInvokedUrlCommand *)command;
- (void)mfzSdkCognitoUserPoolLoginsKey:(CDVInvokedUrlCommand *)command;
// MyFiziqBundle
- (void)mfzSdkLoadCSS:(CDVInvokedUrlCommand *)command;
// MyFiziqUser
- (void)mfzUserRegister:(CDVInvokedUrlCommand *)command;
- (void)mfzUserLogin:(CDVInvokedUrlCommand *)command;
- (void)mfzUserLogout:(CDVInvokedUrlCommand *)command;
- (void)mfzUserUpdateDetails:(CDVInvokedUrlCommand *)command;
- (void)mfzUserIsLoggedIn:(CDVInvokedUrlCommand *)command;
- (void)mfzUserId:(CDVInvokedUrlCommand *)command;
- (void)mfzUserGender:(CDVInvokedUrlCommand *)command;
- (void)mfzUserSetGender:(CDVInvokedUrlCommand *)command;
- (void)mfzUserEmail:(CDVInvokedUrlCommand *)command;
- (void)mfzUserSetEmail:(CDVInvokedUrlCommand *)command;
- (void)mfzUserMeasurementPreference:(CDVInvokedUrlCommand *)command;
- (void)mfzUserSetMeasurementPreference:(CDVInvokedUrlCommand *)command;
- (void)mfzUserWeightInKg:(CDVInvokedUrlCommand *)command;
- (void)mfzUserSetWeightInKg:(CDVInvokedUrlCommand *)command;
- (void)mfzUserHeightInCm:(CDVInvokedUrlCommand *)command;
- (void)mfzUserSetHeightInCm:(CDVInvokedUrlCommand *)command;
// MyFiziqAvatar
- (void)mfzAvatarDownloadMesh:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarHasDownloadedMesh:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarDate:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarGender:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarMeshCachedFile:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarState:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarHeightInCm:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarWeightInKg:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarChestInCm:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarWaistInCm:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarHipInCm:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarInseamInCm:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarThighInCm:(CDVInvokedUrlCommand *)command;
// MyFiziqAvatarManager
- (void)mfzAvatarMgrRequestAvatars:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarMgrDeleteAvatars:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarMgrAllAvatars:(CDVInvokedUrlCommand *)command;
- (void)mfzAvatarDisplayNative:(CDVInvokedUrlCommand *)command;
- (void)mfzTrackingDisplayNative:(CDVInvokedUrlCommand *)command;
- (void)mfzTrackingSingleDisplayNative:(CDVInvokedUrlCommand *)command;
// Extra
- (void)mfzLogin:(CDVInvokedUrlCommand *)command;
- (void)mfzLogout:(CDVInvokedUrlCommand *)command;
- (void)mfzRegister:(CDVInvokedUrlCommand *)command;


@end