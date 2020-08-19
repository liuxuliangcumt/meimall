import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

// 寻找圈子
class CircleFind extends StatefulWidget {
  @override
  _CircleFindState createState() => _CircleFindState();
}

class _CircleFindState extends State<CircleFind> {
  List<String> tabTitle = ["编辑看好", "北京", "情感", "动漫"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabTitle.length,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text('发现圈子'),
          bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TabBar(
                      tabs: tabItem(),
                      isScrollable: true,
                      labelStyle: TextStyle(fontSize: 17, color: Colors.black),
                      unselectedLabelStyle:
                          TextStyle(fontSize: 16, color: Colors.grey),
                      indicatorColor: Constants.mainColor,
                      indicatorSize: TabBarIndicatorSize.label,
                    ),
                  ),
                  Icon(Icons.list)
                ],
              ),
            ),
            preferredSize: Size(double.infinity, 64),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(right: 22.5, left: 22.5),
          child: TabBarView(
            children: [
              getTabView(),
              getTabView(),
              getTabView(),
              getTabView(),
            ],
          ),
          color: Colors.white,
        ),
      ),
    );
  }

  List<Widget> tabItem() {
    List<Widget> tabs = [];
    tabTitle.forEach((element) {
      tabs.add(Text(element));
    });
    return tabs;
  }

  Widget getTabView() {
    return ListView.builder(
        itemBuilder: listViewItem, itemCount: 12, shrinkWrap: true);
  }

  Widget listViewItem(BuildContext context, int index) {
    if (index % 4 == 0) {
      return Container(
        padding: EdgeInsets.only(top: 50, bottom: 20),
        child: EasyAround(
          child: Expanded(
            child: Text(
              '在家也能很快乐',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          right: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ),
      );
    } else {
      return Container(
        height: 56,
        child: Row(
          children: [
            ClipOval(
              child: Container(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "http://www.meichengmall.com/static/img/65aa3d98affd202bf958ed1fc0f3361632544f4dc574-OOkVsF_fw658.f234a506.jpg",
                  ),
                  width: 42,
                  height: 42),
            ),
            Expanded(
              child: Container(
                height: 70,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 15 ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Color(0xffA1A4AF), width: 0.5))),
                child: Stack(
                  children: [
                    Positioned(
                      top: 8,
                      child: Text(
                        '猫咪俱乐部',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      child: Text(
                        '1645个成员      222条帖子',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffA1A4AF)),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      height: 30,
                      width: 66,
                      top: 15,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0x33C3AB87),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          '加入',
                          style: TextStyle(color: Constants.mainColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
