import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

import 'circle_find.dart';
import 'circle_person_page.dart';

//圈子主页
class CircleHome extends StatefulWidget {
  @override
  _CircleHomeState createState() => _CircleHomeState();
}

class _CircleHomeState extends State<CircleHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('圈子'),
        actions: [
          Image.asset("assets/images/camera.png", width: 20),
          SizedBox(width: 20)
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(22.5),
                child: Column(
                  children: [
                    Container(
                      height: 36,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(18)),
                      child: EasyAround(
                        rowMainAxisAlignment: MainAxisAlignment.start,
                        left: Icon(Icons.search,
                            size: 20, color: Color(0x88222222)),
                        child: Text(
                          '搜索圈子和作品',
                          style:
                              TextStyle(fontSize: 13, color: Color(0x88222222)),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    EasyAround(
                      child: Expanded(
                        child: Text(
                          '圈子看一看',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ),
                      right: Icon(Icons.arrow_forward_ios,
                          size: 20, color: Color(0xff777777)),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 170,
                      child: ListView.builder(
                        itemCount: 8,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: imageListItem,
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      child: Container(
                        height: 30,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Constants.mainColor, width: 1)),
                        child: EasyAround(
                          child: Text('探索25239个圈子',
                              style: TextStyle(
                                  fontSize: 10, color: Constants.mainColor)),
                          padding: EdgeInsets.only(left: 5),
                          left: Icon(
                            IconData(0xe600, fontFamily: "ali"),
                            size: 15,
                            color: Constants.mainColor,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => CircleFind()));
                      },
                    ),
                    SizedBox(height: 20),
                    EasyAround(
                      child: Expanded(
                        child: Text(
                          '更早的圈子',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                      ),
                      right: InkWell(
                        child: Icon(Icons.loop,
                            size: 20, color: Color(0xff777777)),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                      itemCount: 20,
                      itemBuilder: listViewItem,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget imageListItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.only(right: 13),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CachedNetworkImage(
            height: 170,
            width: 120,
            imageUrl:
                "http://www.meichengmall.com/wap/static/img/65aa3d98affd202bf958ed1fc0f3361632544f4dc574-OOkVsF_fw658.f234a506.jpg",
          ),
          Padding(
            child: Icon(Icons.videocam, color: Colors.white),
            padding: EdgeInsets.only(left: 10, bottom: 5),
          ),
        ],
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return InkWell(
      child: Container(
        child: Row(
          children: [
            CachedNetworkImage(
              width: 45,
              height: 45,
              imageUrl:
                  "http://www.meichengmall.com/wap/static/img/user.5392cec7.png",
            ),
            SizedBox(width: 15),
            Expanded(
                child: Container(
                    padding: EdgeInsets.only(top: 14, bottom: 14),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffF1F1F1), width: 1))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('正龙',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff2C2C2C))),
                        SizedBox(height: 5),
                        Text('琴：感觉厨艺越来越好了！',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffA1A4AF))),
                      ],
                    ))),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => CirclePersonPage()));
      },
    );
  }
}
