/*
   @Author liwei
   @Date 2019/1/11 4:47 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleFloatingActionButton extends StatefulWidget {
  @override
  GoogleFloatingActionButtonState createState() =>
      new GoogleFloatingActionButtonState();
}

class GoogleFloatingActionButtonState
    extends State<GoogleFloatingActionButton> {

  List<FloatingActionButtonLocation> _locations;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
            if(_index == 4) {
              _index = 0;
            }
          });
        },
        child: Icon(Icons.add),
        foregroundColor: Colors.red,
        backgroundColor: Colors.orange,
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: _locations[_index],
    );
  }

  @override
  void initState() {
    super.initState();
    _locations = [
      FloatingActionButtonLocation.centerDocked,
      FloatingActionButtonLocation.centerFloat,
      FloatingActionButtonLocation.endDocked,
      FloatingActionButtonLocation.endFloat,
    ];
  }
}
