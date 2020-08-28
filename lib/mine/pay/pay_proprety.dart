import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

//资产
class PayProprety extends StatefulWidget {
  @override
  _PayPropretyState createState() => _PayPropretyState();
}

class _PayPropretyState extends State<PayProprety> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/pay_property_bg.png",
            width: MediaQuery.of(context).size.width,
          ),
          Scaffold(
            backgroundColor: Color(0x00ffffff),
            appBar: AppBar(
              title: Text('资产'),
              elevation: 0,
              backgroundColor: Color(0x00ffffff),
              centerTitle: true,
              leading: InkWell(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff777777),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Column(
              children: [
                SizedBox(height: 140),
                Container(
                  width: MediaQuery.of(context).size.width - 42,
                  margin: EdgeInsets.only(left: 21, right: 21),
                  padding: EdgeInsets.all(20),
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 10.0), //阴影xy轴偏移量
                            blurRadius: 15.0, //阴影模糊程度
                            spreadRadius: 3.0 //阴影扩散程度
                            )
                      ]),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          '我的余额',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff777777)),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Text(
                          '昨日收益',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff777777)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          '2500.50',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Text(
                          '2500.50',
                          style: TextStyle(
                              fontSize: 12, color: Constants.mainColor),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width - 42,
                  margin: EdgeInsets.only(left: 21, right: 21),
                  padding: EdgeInsets.all(20),
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                            blurRadius: 15.0, //阴影模糊程度
                            spreadRadius: 3.0 //阴影扩散程度
                            )
                      ]),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          '通用金',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff777777)),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Text(
                          '昨日收益',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff777777)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          '2500.50',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Text(
                          '2500.50',
                          style: TextStyle(
                              fontSize: 12, color: Constants.mainColor),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width - 42,
                  margin: EdgeInsets.only(left: 21, right: 21),
                  padding: EdgeInsets.all(20),
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                            blurRadius: 15.0, //阴影模糊程度
                            spreadRadius: 3.0 //阴影扩散程度
                            )
                      ]),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Text(
                          '环保金',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff777777)),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Text(
                          '昨日收益',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff777777)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          '2500.50',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Text(
                          '2500.50',
                          style: TextStyle(
                              fontSize: 12, color: Constants.mainColor),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
