import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:forest_login/utils/countdown.dart';

/// 验证码输入框
/// 

class SmsCodeField extends StatefulWidget {
  final Function(String) onChanged;
  final VoidCallback callBack;
  final String phoneNumber;

  SmsCodeField({
    @required this.phoneNumber,
    @required this.onChanged,
    this.callBack
  });

  @override
  SmsCodeFieldState createState() => SmsCodeFieldState();
}

class SmsCodeFieldState extends State<SmsCodeField> {

  FocusNode focusNodeSmsCode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: EdgeInsets.fromLTRB(0, 12, 10, 0),
          child: Text('验证码       ', style: TextStyle(fontSize:16))
        ),
        hintText: '请输入验证码',
        hintStyle: TextStyle(color: Colors.grey[350]),
        suffixIcon: Container(
          padding: EdgeInsets.only(top: 12),
          child: widget.phoneNumber == null || widget.phoneNumber == ''
            ? GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Text('获取验证码', style: TextStyle(color: Colors.grey[500], fontSize:16.0))
                ),
                onTap: (){
                  Fluttertoast.showToast(msg: "请输入11位有效手机号码");
                }
              )
            : LoginFormCode(
                countdown: 60,
                available: true,
                onTapCallback: widget.callBack,
              )
        ),
      ),
      focusNode: focusNodeSmsCode,
      onChanged: widget.onChanged,
    );
  }
}