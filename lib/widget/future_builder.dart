/*
   @Author liwei
   @Date 2019/1/11 11:44 AM
   @Description: TODO
 */

import 'package:flutter/material.dart';
import 'dart:io';

class GoogleFutureBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var httpClient = new HttpClient();
    Widget waiting = Column(
      children: <Widget>[
        Text('waiting'),
        Icon(Icons.cloud_download),
      ],
    );
    Widget active = Column(
      children: <Widget>[
        Text('active'),
        Icon(Icons.access_time),
      ],
    );
    Widget error = Column(
      children: <Widget>[
        Text('error'),
        Icon(Icons.error),
      ],
    );
    Widget done = Column(
      children: <Widget>[
        Text('done'),
        Icon(Icons.done),
      ],
    );
    Widget none = Column(
      children: <Widget>[
        Text('none'),
        Icon(Icons.filter_none),
      ],
    );
    return FutureBuilder(
      future: httpClient.getUrl(Uri.parse('http://cache.video.iqiyi.com/jp/avlist/202861101/1/?callback=jsonp9')),
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.done) {
          if (snap.hasError) {
            return error;
          }
          return done;
        } else if (snap.connectionState == ConnectionState.active) {
          return active;
        } else if (snap.connectionState == ConnectionState.waiting) {
          return waiting;
        } else if (snap.connectionState == ConnectionState.none) {
          return none;
        }
      },
    );
  }
}
