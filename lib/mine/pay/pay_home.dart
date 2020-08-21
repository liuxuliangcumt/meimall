import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

//支付首页
class PayHome extends StatefulWidget {
  @override
  _PayHomeState createState() => _PayHomeState();
}

class _PayHomeState extends State<PayHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('支付中心'),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.only(left: 22, right: 22),
        child: Column(
          children: [
            Stack(
              children: [

                Image.asset("assets/images/pay_bg.png"),
                Positioned(
                  top: 22,
                  left: 23,
                  child: Text(
                    '可用余额（元）',
                    style: TextStyle(color: Constants.mainColor),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 23,
                  child: Text(
                    '500.2',
                    style: TextStyle(fontSize: 32, color: Color(0xffF1D4A8)),
                  ),
                ),
                Positioned(
                  right: 8.5,
                  top: 50,
                  child: Container(
                    height: 22,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Constants.mainColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(11),
                            topLeft: Radius.circular(11))),
                    child: Text(
                      '资金安全保障中 >',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
