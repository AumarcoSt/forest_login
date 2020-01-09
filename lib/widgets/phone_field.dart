import 'package:flutter/material.dart';

/// 手机号输入框
/// 


class PhoneField extends StatefulWidget {
  final Function(String) onChanged;

  PhoneField({
    @required this.onChanged,
  });

  @override
  PhoneFieldState createState() => PhoneFieldState();
}

class PhoneFieldState extends State<PhoneField> {


  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top:12),
        prefixIcon: Container(
          padding: EdgeInsets.fromLTRB(0, 12, 10, 0),
          child: Text('手机号            +86',style:TextStyle(fontSize:16))
        ),
        prefixStyle: TextStyle(fontSize: 18),
        hintText: '请输入手机号码',
        hintStyle: TextStyle(color: Colors.grey[350])
      ),
      onChanged: widget.onChanged,
    );
  }
}