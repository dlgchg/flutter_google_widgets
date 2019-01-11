/*
   @Author liwei
   @Date 2019/1/11 1:50 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleFadeTransition extends StatefulWidget {
  @override
  GoogleFadeTransitionState createState() => new GoogleFadeTransitionState();
}

class GoogleFadeTransitionState extends State<GoogleFadeTransition> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;
  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      child: Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
      ),
      opacity: _animation,
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
