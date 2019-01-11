/*
   @Author liwei
   @Date 2019/1/10 4:22 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleExpand extends StatelessWidget {
  String name() {
    return 'Expand';
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.green,
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.red,
                child: Text('flex: 1'),
              ),
            ),
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.green,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.red,
                child: Text('flex: 2'),
              ),
            ),

            Container(
              width: 50.0,
              height: 50.0,
              color: Colors.orange,
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.blue,
                child: Text('flex: 1'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
