/*
   @Author liwei
   @Date 2019/1/12 3:14 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleFadeInImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      fadeInCurve: Curves.easeIn,
      fadeOutCurve: Curves.easeOut,
      fadeInDuration: Duration(seconds: 2),
      fadeOutDuration: Duration(seconds: 2),
      placeholder: 'assets/images/wechat.jpg',
      image:
          'http://img3.redocn.com/tupian/20141202/xiaochaoyeshanjunmeishi_3491615.jpg',
    );
  }
}
