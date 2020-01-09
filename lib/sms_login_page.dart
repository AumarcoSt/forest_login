import 'package:flutter/material.dart';
import 'package:forest_login/widgets/phone_field.dart';
import 'package:forest_login/widgets/sms_field.dart';
import 'package:forest_login/widgets/login_button.dart';
import 'package:forest_login/widgets/loadingTip.dart';

class SmsLoginPage extends StatefulWidget {
  static const routeName = '/smsLogin';
  
  @override
  SmsLoginPageState createState() => SmsLoginPageState();
}

class SmsLoginPageState extends State<SmsLoginPage> {
  String _phoneNumber;

  _checkPhoneNumber(val) {
    setState(() { 
      _phoneNumber = val.length >= 11 ? val : '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PhoneField(
              onChanged: (value){
                ////print('phoneField ===> $value');
                _checkPhoneNumber(value);
              }
            ),
            SmsCodeField(
              phoneNumber: _phoneNumber,
              onChanged: (value){

              }
            ),
            LoginButton(
              loginForm: (){},
            ),
            LoadingTip()
          ],
        )
      )
    );
  }
}