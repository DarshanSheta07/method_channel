import 'dart:io';

import 'package:flutter/material.dart';
import 'package:method_channel/method_channel/method_channel_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MethodChanel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: GetMethodChannelData(),
    );
  }
}

class GetMethodChannelData extends StatefulWidget {
  GetMethodChannelData({Key? key}) : super(key: key);

  @override
  State<GetMethodChannelData> createState() => _GetMethodChannelDataState();
}

class _GetMethodChannelDataState extends State<GetMethodChannelData> {
  final MethodChannelApp methodChannelApp = MethodChannelApp();

  @override
  void initState() {
    super.initState();
    methodChannelApp.getNameFromChannel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Method Channel'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Method Channel flutter for ANDROID AND IOS',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child:Text(
              '${methodChannelApp.getString}',
              style: const TextStyle(color: Colors.red, fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

}
