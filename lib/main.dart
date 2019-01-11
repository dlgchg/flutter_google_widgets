import 'package:flutter/material.dart';
import 'widget/layout_builder.dart';
import 'widget/fitted_box.dart';
import 'widget/safe_area.dart';
import 'widget/expanded.dart';
import 'widget/warp.dart';
import 'widget/opacity.dart';
import 'widget/future_builder.dart';
import 'widget/fade_transition.dart';
import 'widget/floating_action_button.dart';
import 'widget/page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return HomeWidget();
  }
}

class HomeWidget extends StatefulWidget {
  @override
  HomeWidgetState createState() => new HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  List<Widget> widgets = [
    GoogleLayoutBuilder(),
    GoogleFittedBox(),
    GoogleSafeArea(),
    GoogleExpand(),
    GoogleWarp(),
    GoogleOpacity(),
    GoogleFutureBuilder(),
    GoogleFadeTransition(),
    GoogleFloatingActionButton(),
    GooglePageView(),
  ];
  int _index = 0;
  bool _home = true;

  @override
  Widget build(BuildContext context) {
    Widget _lb = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(widgets[index].toString()),
          onTap: () {
            setState(() {
              _index = index;
              _home = false;
            });
          },
        );
      },
      itemCount: widgets.length,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget'),
          leading: _home
              ? Container()
              : IconButton(
                  icon: Icon(Icons.chevron_left),
                  onPressed: () {
                    setState(() {
                      _home = true;
                      _index = 0;
                    });
                  },
                ),
        ),
        body: _home ? _lb : widgets[_index],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
