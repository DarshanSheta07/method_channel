import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
              let mlkitChannel = FlutterMethodChannel(name: "methodChannel/method",
                                                        binaryMessenger: controller.binaryMessenger)
          mlkitChannel.setMethodCallHandler({
                (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
              if call.method == "getStringFromAndroid"{
              result("You successfully made a bridge between flutter and IOS")
              }
           })
//      GeneratedPluginRegistrant.register(withRegistry: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
