

import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final Function loginForm;

  LoginButton({
    @required this.loginForm
  });

  @override
  LoginButtonState createState() => LoginButtonState();
}

class LoginButtonState extends State<LoginButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 40,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: FlatButton(
        child: Text(
          '登录',
          style: TextStyle(color:Colors.white,fontSize:18)
        ),
        color: Colors.blue[400],
        onPressed: widget.loginForm
      )
    );
  }
}