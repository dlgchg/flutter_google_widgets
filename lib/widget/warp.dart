/*
   @Author liwei
   @Date 2019/1/10 4:44 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleWarp extends StatelessWidget {
  String name() {
    return 'Warp';
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.orange,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.blueGrey,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.red,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.green,
              height: 50.0,
              width: 100.0,
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Divider(height: 1.0, color: Colors.red,),
        SizedBox(
          height: 10.0,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          runSpacing: 20.0,
          runAlignment: WrapAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.orange,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.blueGrey,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.red,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.green,
              height: 50.0,
              width: 100.0,
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Divider(height: 1.0, color: Colors.red,),
        SizedBox(
          height: 10.0,
        ),
        Wrap(
          alignment: WrapAlignment.spaceAround,
          spacing: 10.0,
          direction: Axis.vertical,
          runSpacing: 20.0,
          runAlignment: WrapAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.orange,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.blueGrey,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.red,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.green,
              height: 50.0,
              width: 100.0,
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Divider(height: 1.0, color: Colors.red,),
        SizedBox(
          height: 10.0,
        ),
        Wrap(
          spacing: 10.0,
          runSpacing: 20.0,
          textDirection: TextDirection.rtl,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.orange,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.blueGrey,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.red,
              height: 50.0,
              width: 100.0,
            ),
            Container(
              color: Colors.green,
              height: 50.0,
              width: 100.0,
            ),
          ],
        )
      ],
    );
  }
}
