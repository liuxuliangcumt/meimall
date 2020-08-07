import 'package:flutter/material.dart';
import 'package:meimall/beans/behaviourcategory.dart';
import 'package:meimall/beans/homeshop.dart';
import 'package:meimall/commonview/CommonViews.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:meimall/magazine/follow.dart';
import 'package:meimall/netUtil/NetUtil.dart';
//动态

class Behaviour extends StatefulWidget {
  @override
  _BehaviourState createState() => _BehaviourState();
}

class _BehaviourState extends State<Behaviour> {
  List<BCategory> bCategoryBeans = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: bCategoryBeans.length,
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
              tabs: getTabs(),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xffC3AB87),
            ),
          ),
          Icon(Icons.add, size: 16, color: Colors.grey)
        ],
      ),
    );
  }

  void getData() {
    NetUtil.post("http://www.bjxmqy.com:9501/common/catelist", {}, (result) {
      Map<String, dynamic> maps = result.data;
      List shops = <dynamic>[];
      maps.forEach((key, value) {
        shops.add(value);
      });
      setState(() {
        bCategoryBeans = shops.map((i) => BCategory.fromJson(i)).toList();
      });
    }, (error) {});
  }

  List<Widget> getTabs() {
    List<Widget> list = [];

    bCategoryBeans.forEach((element) {
      list.add(Text('${element.board_title}'));
    });

    return list;
  }
}
