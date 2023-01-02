import 'package:flutter/services.dart';



///First Create a method Channel class
///define a methodChannel name as you want mine is ['methodChannel/method]

// ANDROID //
///Open your android project in android studio and go to main activity android/app/src/main/kotlin
///Write a method to get Data for e.g: go to mine main activity I'm getting string from nativeCode

// IOS //

/// and you are good to go..!!!

class MethodChannelApp {
  static const mainMethodChannel = MethodChannel('methodChannel/method');
  String? getString;
  String? getString2;

  Future<String?> getNameFromChannel() async {
    final version = await mainMethodChannel.invokeMethod('getStringFromAndroid');
    print('varsion $version');
    getString = version;
    print('getString $getString');
    return version;
  }
}
