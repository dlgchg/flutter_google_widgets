/*
   @Author liwei
   @Date 2019/1/10 3:57 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleSafeArea extends StatelessWidget {
  String name() {
    return 'SafeArea';
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("index  = $index"),
          );
        },
        itemCount: 100,
      ),
    );
  }
}
