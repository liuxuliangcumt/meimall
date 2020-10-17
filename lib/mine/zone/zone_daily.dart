import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:meimall/mine/zone/zone_daily_add.dart';

//日志
class ZoneDaily extends StatefulWidget {
  @override
  _ZoneDailyState createState() => _ZoneDailyState();
}

class _ZoneDailyState extends State<ZoneDaily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日志列表'),
        elevation: 0,
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              '草稿箱',
              style: TextStyle(fontSize: 13, color: Constants.mainColor),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
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
                padding: EdgeInsets.only(left: 22, right: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    topBar(),
                    Container(
                      height: 50,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffF1F1F1), width: 0.5))),
                      child: Text(
                        '2020-05',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    ListView.builder(
                      itemBuilder: listViewItem,
                      itemCount: 9,
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

  Widget topBar() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: InkWell(
              child: Container(
                height: 72,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Color(0xfff1f1f1),
                      offset: Offset(1.0, 1.0),
                      blurRadius: 1,
                      spreadRadius: 4)
                ]),
                child: EasyAround(
                  child: Text(
                    '写日志',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.only(right: 25),
                  right: Image.asset("assets/images/zone_daily_bill.png",
                      width: 48, height: 48),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => ZoneDailyAdd()));
              },
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 72,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color(0xfff1f1f1),
                    offset: Offset(1.0, 1.0),
                    blurRadius: 1,
                    spreadRadius: 4)
              ]),
              child: EasyAround(
                child: Text(
                  '写手账',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(right: 25),
                right: Image.asset("assets/images/zone_daily_bill.png",
                    width: 48, height: 48),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      height: 116,
      child: Row(
        children: <Widget>[
          Container(
            width: 55,
            child: Visibility(
              visible: index % 2 == 0,
              child: Text(
                '05\n十月',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 0.5, color: Color(0xffF1F1F1)))),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '记录不一样的元宵节记录不一样的元宵节',
                          maxLines: 2,
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff2A2A2A)),
                        ),
                        Expanded(child: Container()),
                        EasyAround(
                          rowMainAxisAlignment: MainAxisAlignment.start,
                          child: Text(
                            '4',
                            style: TextStyle(color: Color(0xffA1A4AF)),
                          ),
                          left: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xff9C9C9C),
                            size: 17,
                          ),
                          padding: EdgeInsets.only(left: 5, right: 20),
                          right: Visibility(
                            child: Text(
                              '空间状态为私密',
                              style: TextStyle(color: Color(0xffA1A4AF)),
                            ),
                            visible: index % 3 == 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    child: CachedNetworkImage(
                      imageUrl:
                          "http://www.meichengmall.com/wap/static/img/user.5392cec7.png",
                      width: 70,
                      height: 70,
                      errorWidget: (context, url, error) => new Icon(
                        Icons.error_outline,
                        size: 70,
                      ),
                      fit: BoxFit.cover,
                    ),
                    visible: index % 2 == 0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
