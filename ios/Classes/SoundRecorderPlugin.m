#import "SoundRecorderPlugin.h"
#if __has_include(<sound_recorder/sound_recorder-Swift.h>)
#import <sound_recorder/sound_recorder-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sound_recorder-Swift.h"
#endif

@implementation SoundRecorderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSoundRecorderPlugin registerWithRegistrar:registrar];
}
@end
