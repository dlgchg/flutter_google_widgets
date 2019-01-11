/*
   @Author liwei
   @Date 2019/1/11 5:07 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GooglePageView extends StatefulWidget {
  @override
  GooglePageViewState createState() => new GooglePageViewState();
}

class GooglePageViewState extends State<GooglePageView> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(
      initialPage: 1,
    );
    return PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.green,
        ),
        PageView(
          reverse: true,
          scrollDirection: Axis.vertical,
          controller: _controller,
          children: <Widget>[
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        Container(
          color: Colors.lime,
        ),
      ],
    );
  }
}