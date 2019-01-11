/*
   @Author liwei
   @Date 2019/1/10 11:17 AM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleFittedBox extends StatelessWidget {
  String name() {
    return 'FittedBox';
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.blue,
        child: FittedBox(
          alignment: AlignmentDirectional.bottomEnd,
          fit: BoxFit.scaleDown,
          child: Image.network('http://img3.redocn.com/tupian/20141202/xiaochaoyeshanjunmeishi_3491615.jpg'),
        ),
      ),
    );
  }
}