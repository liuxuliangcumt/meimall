import 'package:flutter/material.dart';
import 'package:meimall/commonview/CommonViews.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:meimall/magazine/follow.dart';
//动态

class Behaviour extends StatefulWidget {
  @override
  _BehaviourState createState() => _BehaviourState();
}

class _BehaviourState extends State<Behaviour> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('动态'),
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          actions: [CommonPopupWindowButton(), SizedBox(width: 20)],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 22.5, right: 22.5, top: 20),
            child: Column(
              children: [tabView(), DemoListView(true)],
            ),
          ),
        ),
      ),
    );
  }

  Widget tabView() {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Text('杭州'),
          ),
          Expanded(
            child: TabBar(
              tabs: [
                Text('榜单'),
                Text('美食'),
                Text('社会'),
                Text('艺术'),
                Text('汽车')
              ],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xffC3AB87),
            ),
          ),
          Icon(Icons.add, size: 16, color: Colors.grey)
        ],
      ),
    );
  }
}
