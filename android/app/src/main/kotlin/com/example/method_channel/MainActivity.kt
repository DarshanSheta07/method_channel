package com.example.method_channel

import android.provider.ContactsContract
import androidx.annotation.NonNull
import com.google.firestore.v1.Cursor
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity : FlutterActivity() {
    private val METHODCHANNEL = "methodChannel/method"
    var methodChannelResult: MethodChannel.Result? = null


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            METHODCHANNEL
        ).setMethodCallHandler { call, result ->
            methodChannelResult = result; if (call.method == "getStringFromAndroid") {
            result.success("You successfully made a bridge between flutter and NATIVE")

        }
        }
    }
}
