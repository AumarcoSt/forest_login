

import 'package:flutter/material.dart';

class LoadingTip extends StatelessWidget {
  const LoadingTip({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 10, 16),
        width: 200,
        // height: 40,
        color: Colors.grey[500],
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                backgroundColor: Colors.grey[500], 
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[300])
              )
            ),
            SizedBox(width:20),
            Text('读取中...',style:TextStyle(fontSize:16,color: Colors.white))
          ],
        ),
      ) 
    );
  }
}