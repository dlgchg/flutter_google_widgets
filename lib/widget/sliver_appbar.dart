/*
   @Author liwei
   @Date 2019/1/12 1:17 PM
   @Description: TODO
 */

import 'package:flutter/material.dart';

class GoogleSliverAppBar extends StatefulWidget {
  @override
  GoogleSliverAppBarState createState() => new GoogleSliverAppBarState();
}

class GoogleSliverAppBarState extends State<GoogleSliverAppBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
//            leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: null),
          automaticallyImplyLeading: true,
          actions: <Widget>[
            Icon(Icons.add),
          ],
          elevation: 10,
          forceElevated: true,
          title: Text('SliverAppBar'),
          //标题居中
          centerTitle: true,
          //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
          expandedHeight: 300.0,
          //滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
          floating: true,
          //是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
          pinned: false,
          //背景颜色
          backgroundColor: Colors.green,
          //黑底白字，lignt 白底黑字
          brightness: Brightness.dark,
          //所有的icon的样式,不仅仅是左侧的，右侧的也会改变
          iconTheme: IconThemeData(color: Colors.red, size: 30, opacity: 1),
          //字体样式
          textTheme: TextTheme(),
          // appbar是否显示在屏幕的最上面，为false是显示在最上面，为true就显示在状态栏的下面
          primary: true,
          //标题两边的空白区域
          titleSpacing: 16,

          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
//            title: Text('FlexibleSpaceBar'),
            background: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
              fit: BoxFit.cover,
            ),
            collapseMode: CollapseMode.pin,
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.cake), text: '左侧'),
              Tab(icon: Icon(Icons.center_focus_strong), text: '中侧'),
              Tab(icon: Icon(Icons.golf_course), text: '右侧'),
            ],
            controller: TabController(length: 3, vsync: this),
          ),
        ),
        SliverGrid(
          gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate:  SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return  Container(
                alignment: Alignment.center,
                color: Colors.green[100 * (index % 9)],
                child:  Text('grid item $index', style: TextStyle(fontSize: 16.0),),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate:  SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return  Container(
//                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child:  Text('list item $index', style: TextStyle(fontSize: 16.0,),),
              );
            },
          ),
        ),
      ],
    );
  }
}

//return Scaffold(
//appBar: AppBar(
//title: Text('SliverAppBar'),
//),
//body: SafeArea(
//child: NestedScrollView(
//headerSliverBuilder: (context, innerBoxIsScrolled) {
//return [
//SliverAppBar(
////            leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: null),
//automaticallyImplyLeading: true,
//actions: <Widget>[
//Icon(Icons.add),
//],
//elevation: 10,
//forceElevated: true,
//title: Text('SliverAppBar'),
////标题居中
//centerTitle: true,
////默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
//expandedHeight: 300.0,
////滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
//floating: true,
////是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
//pinned: true,
////背景颜色
//backgroundColor: Colors.green,
////黑底白字，lignt 白底黑字
//brightness: Brightness.dark,
////所有的icon的样式,不仅仅是左侧的，右侧的也会改变
//iconTheme:
//IconThemeData(color: Colors.red, size: 30, opacity: 1),
////字体样式
//textTheme: TextTheme(),
//// appbar是否显示在屏幕的最上面，为false是显示在最上面，为true就显示在状态栏的下面
//primary: true,
////标题两边的空白区域
//titleSpacing: 16,
//
//flexibleSpace: FlexibleSpaceBar(
//centerTitle: true,
//title: Text('FlexibleSpaceBar'),
//background: Image.network(
//"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
//fit: BoxFit.cover,
//),
//),
//bottom: TabBar(
//tabs: [
//Tab(icon: Icon(Icons.cake), text: '左侧'),
//Tab(icon: Icon(Icons.golf_course), text: '右侧'),
//],
//controller: TabController(length: 2, vsync: this),
//),
//),
//];
//},
//body: ListView.builder(
//itemBuilder: (context, index) {
//return ListTile(
//title: Text('index = $index'),
//);
//},
//itemCount: 30,
//),
//),
//),
//);
