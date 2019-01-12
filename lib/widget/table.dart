/*
   @Author liwei
   @Date 2019/1/12 10:55 AM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleTable extends StatefulWidget {
  @override
  GoogleTableState createState() => new GoogleTableState();
}

class GoogleTableState extends State<GoogleTable> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Table(
          border: TableBorder.all(color: Colors.black, width: 2.0),
          columnWidths: {
            0: FractionColumnWidth(.2),
            2: FractionColumnWidth(.5)
          },
          defaultColumnWidth: IntrinsicColumnWidth(),
          // FractionColumnWidth水平相对宽度 FixedColumnWidth
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          children: [
            TableRow(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.lime,
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.green,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  width: 100.0,
                  height: 150.0,
                  color: Colors.red,
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Table(
          border: TableBorder.all(color: Colors.black, width: 2.0),
          columnWidths: {
            1: FractionColumnWidth(.2),
            2: FractionColumnWidth(.4)
          },
          defaultColumnWidth: IntrinsicColumnWidth(),
          // FractionColumnWidth水平相对宽度 FixedColumnWidth
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: [
            TableRow(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.lime,
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.green,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  width: 100.0,
                  height: 150.0,
                  color: Colors.red,
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Table(
          border: TableBorder.all(color: Colors.black, width: 2.0),
          columnWidths: {
            0: FractionColumnWidth(.2),
            2: FractionColumnWidth(.3)
          },
          defaultColumnWidth: IntrinsicColumnWidth(),
          // FractionColumnWidth水平相对宽度 FixedColumnWidth
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.lime,
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.green,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  width: 100.0,
                  height: 150.0,
                  color: Colors.red,
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  color: Colors.greenAccent,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.orange,
                ),
              ],
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
  }
}
