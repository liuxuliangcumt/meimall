import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:meimall/magazine/public_question.dart';
import 'package:meimall/magazine/public_question2.dart';
import 'package:meimall/magazine/questiondetail.dart';
//问答列表

class QuestionAndAnswer extends StatefulWidget {
  @override
  _QuestionAndAnswerState createState() => _QuestionAndAnswerState();
}

class _QuestionAndAnswerState extends State<QuestionAndAnswer> {
  List data = <String>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data.add("value");
    data.add("value");
    data.add("value");
    data.add("value");
    data.add("value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('问答'),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            child: Icon(IconData(0xe647, fontFamily: "ali")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => PublicQuestion()));
            },
          ),
          SizedBox(width: 20)
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 22.5, right: 22.5, top: 10),
        child: ListView.builder(
          itemBuilder: listViewItem,
          itemCount: data.length + 1,
        ),
      ),
      bottomNavigationBar: InkWell(
        child: Text('发布问题'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => PublicQuestion2()));
        },
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    if (index == 0) {
      return Container(
        height: 36,
        padding: EdgeInsets.only(left: 10, right: 10),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Color(0xfff7f7f7), borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.grey),
            Text('搜索您想要知道的', style: TextStyle(color: Colors.grey, fontSize: 14))
          ],
        ),
      );
    } else {
      return GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => QuestionDetail()));
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 15),
                Text(
                  '五一为什么连着放五天？',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(
                      child: Column(
                    children: [
                      EasyAround(
                        child: Text("正龙"),
                        padding: EdgeInsets.only(left: 10, right: 20),
                        rowMainAxisAlignment: MainAxisAlignment.start,
                        left: ClipOval(
                            child: new FadeInImage.assetNetwork(
                                placeholder: "assets/images/unlogin.png",
                                //预览图
                                fit: BoxFit.contain,
                                image:
                                    "http://www.meichengmall.com/static/img/user.5392cec7.png",
                                width: 20,
                                height: 20)),
                        right: Text(
                          '时尚博主',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Text(
                        '节假日期间，各地区、各部门要妥安排好值班和安全。节假日期间各地...',
                      ),
                    ],
                  )),
                  SizedBox(width: 10),
                  CachedNetworkImage(
                    fit: BoxFit.cover,
                    height: 63,
                    width: 90,
                    imageUrl:
                        "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
                  )
                ]),
                SizedBox(height: 15),
                Row(
                  children: [
                    EasyAround(
                      left: Text("51",
                          style: TextStyle(
                              fontSize: 13, color: Color(0xffA1A4AF))),
                      padding: EdgeInsets.only(left: 5),
                      child: Image.asset("assets/images/good.png",
                          width: 18, height: 18),
                    ),
                    SizedBox(width: 30),
                    EasyAround(
                      left: Text("16",
                          style: TextStyle(
                              fontSize: 13, color: Color(0xffA1A4AF))),
                      padding: EdgeInsets.only(left: 5),
                      child: Image.asset("assets/images/me_message.png",
                          width: 18, height: 18),
                    ),
                  ],
                ),
                SizedBox(height: 25)
              ],
            ),
          ));
    }
  }
}
