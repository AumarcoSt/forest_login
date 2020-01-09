//// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:forest_login/sms_login_page.dart';
//// import 'package:flutter/services.dart';

class ForestLoginPage extends StatelessWidget {
  //// static const MethodChannel _channel =
  ////     const MethodChannel('forest_login');

  //// static Future<String> get platformVersion async {
  ////   final String version = await _channel.invokeMethod('getPlatformVersion');
  ////   return version;
  //// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmsLoginPage()
    );
  }
}
