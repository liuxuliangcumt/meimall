import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';

import 'magazine_detail.dart';

class Magazine extends StatefulWidget {
  @override
  _MagazineState createState() => _MagazineState();
}

class _MagazineState extends State<Magazine> {
  List listData = ["", "", ""];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              child: Icon(Icons.arrow_back_ios, color: Colors.black),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            elevation: 0,
            actions: [
              Image.asset(
                "assets/images/camera.png",
                width: 20,
              ),
              SizedBox(
                width: 22,
              )
            ],
            title: Text(
              "美食",
              style: TextStyle(color: Colors.black, fontSize: 21),
            ),
            centerTitle: false,
            backgroundColor: Colors.white,
          ),
          body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    addressAndSearch(),
                    Container(
                      child: TabBar(
                        tabs: [
                          Text("资讯"),
                          Text("聚焦"),
                          Text("寻味"),
                          Text("人物"),
                          Text("专访"),
                        ],
                        labelStyle: TextStyle(fontSize: 18),
                        unselectedLabelStyle: TextStyle(fontSize: 18),
                        indicatorPadding: EdgeInsets.only(top: 10),
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Color(0xffC3AB87),
                      ),
                      padding: EdgeInsets.only(
                          top: 25, bottom: 30, left: 22, right: 22),
                    ),
                    girdView(),
                  ],
                ),
              ),
              color: Colors.white),
        ));
  }

  Widget addressAndSearch() {
    return Container(
      height: 36,
      padding: EdgeInsets.only(right: 10, left: 10),
      decoration: BoxDecoration(
          color: Color(0xffF7F7F7), borderRadius: BorderRadius.circular(18)),
      margin: EdgeInsets.only(left: 22.5, right: 22.5),
      child: Row(
        children: [
          SizedBox(child: Image.asset("assets/images/search.png"), width: 16.5),
          SizedBox(width: 7.5),
          Expanded(
            child: InkWell(
                child: Text("搜索您的美好生活",
                    style: TextStyle(color: Color(0xffBCBCBC), fontSize: 14)),
                onTap: () {}),
          ),
        ],
      ),
    );
  }

  Widget girdView() {
    return Container(
      padding: EdgeInsets.only(left: 22, right: 22),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //横轴元素个数
          crossAxisCount: 2,
          //纵轴间距
          mainAxisSpacing: 10.0,
          //横轴间距
          crossAxisSpacing: 10.0,
          childAspectRatio: 1 / 1.1,
          //子组件宽高长度比例
        ),
        itemBuilder: gridViewItem,
        itemCount: listData.length,
      ),
    );
  }

  Widget gridViewItem(BuildContext context, int index) {
    return InkWell(
      child: Container(
        child: Column(
          children: [
            CachedNetworkImage(
              height: 150,
              fit: BoxFit.fitWidth,
              imageUrl:
                  // http://www.meichengmall.com/wap/static/img/b1.2547b2ab.png
                  "http://www.meichengmall.com/wap/static/img/16B1B384664.ef65c3c4.jpg",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
            Text('颜值爆表的渐变色蕾丝蛋卷一个鸡蛋做一堆', maxLines: 2),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => MagazineDetail()));
      },
    );
  }
}
