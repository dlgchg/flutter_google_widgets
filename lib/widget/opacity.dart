/*
   @Author liwei
   @Date 2019/1/10 8:26 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleOpacity extends StatefulWidget {

  String name() {
    return 'Opacity';
  }

  @override
  GoogleOpacityState createState() => new GoogleOpacityState();
}

class GoogleOpacityState extends State<GoogleOpacity> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.green,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
            Opacity(
              opacity: 0.0,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
          ],
        ),
        Stack(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              child: Image.network(
                  'http://img2.imgtn.bdimg.com/it/u=2755523882,2215399258&fm=200&gp=0.jpg'),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 1), (){
      setState(() {
        _opacity = 0.0;
      });
    });
  }

}
