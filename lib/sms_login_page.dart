import 'package:flutter/material.dart';
import 'package:forest_login/widgets/phone_field.dart';

class SmsLoginPage extends StatefulWidget {
  static const routeName = '/smsLogin';
  
  @override
  SmsLoginPageState createState() => SmsLoginPageState();
}

class SmsLoginPageState extends State<SmsLoginPage> {
  String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PhoneField(
            onChanged: (value){
              //TODO: VoidCallback
              print('phoneField ===> $value');
            }
          )
        ],
      )
    );
  }
}