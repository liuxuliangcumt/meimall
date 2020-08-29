import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

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
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0.5))),
                      child: Text(
                        '2020-05',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
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
}
