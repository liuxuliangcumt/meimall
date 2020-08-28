import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:meimall/mine/pay/pay_cashout.dart';
import 'package:meimall/mine/pay/pay_dill.dart';
import 'package:meimall/mine/pay/pay_proprety.dart';
import 'package:meimall/mine/pay/pay_recharge.dart';
import 'package:meimall/mine/pay/pay_transfer.dart';

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
        padding: EdgeInsets.only(left: 22, right: 22, top: 10),
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
            ),
            threeChoise(),
            InkWell(
                child: Container(
                  padding: EdgeInsets.only(),
                  height: 56,
                  child: Row(
                    children: [
                      Padding(
                          child: Image.asset("assets/images/pay_dill.png",
                              width: 25),
                          padding: EdgeInsets.only(top: 8, right: 10)),
                      Expanded(child: Text('账单')),
                      Icon(Icons.arrow_forward_ios,
                          size: 20, color: Color(0xffD0D0D0)),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (n) => PayDill()));
                }),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(),
                height: 56,
                child: Row(
                  children: [
                    Padding(
                        child: Image.asset("assets/images/pay_property.png",
                            width: 25),
                        padding: EdgeInsets.only(top: 8, right: 10)),
                    Expanded(child: Text('资产')),
                    Icon(Icons.arrow_forward_ios,
                        size: 20, color: Color(0xffD0D0D0)),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => PayProprety()));
              },
            ),
            Container(
              padding: EdgeInsets.only(),
              height: 56,
              child: Row(
                children: [
                  Padding(
                      child: Image.asset("assets/images/pay_remainder.png",
                          width: 25),
                      padding: EdgeInsets.only(top: 8, right: 10)),
                  Expanded(child: Text('余额')),
                  Icon(Icons.arrow_forward_ios,
                      size: 20, color: Color(0xffD0D0D0)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(),
              height: 56,
              child: Row(
                children: [
                  Padding(
                      child: Image.asset("assets/images/pay_renzheng.png",
                          width: 25),
                      padding: EdgeInsets.only(top: 8, right: 10)),
                  Expanded(child: Text('通证')),
                  Icon(Icons.arrow_forward_ios,
                      size: 20, color: Color(0xffD0D0D0)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(),
              height: 56,
              child: Row(
                children: [
                  Padding(
                      child: Image.asset("assets/images/pay_welfare.png",
                          width: 25),
                      padding: EdgeInsets.only(top: 8, right: 10)),
                  Expanded(child: Text('公益')),
                  Icon(Icons.arrow_forward_ios,
                      size: 20, color: Color(0xffD0D0D0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget threeChoise() {
    return Container(
      padding: EdgeInsets.only(top: 40, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => PayRecharge()));
            },
            child: EasyAround(
              padding: EdgeInsets.only(top: 10),
              top: Image.asset("assets/images/pay_recharge.png", width: 21),
              child: Text('充值',
                  style: TextStyle(fontSize: 12, color: Color(0xff787878))),
            ),
          ),
          InkWell(
            child: EasyAround(
              padding: EdgeInsets.only(top: 10),
              top: Image.asset("assets/images/pay_trans.png", width: 21),
              child: Text(
                '转账',
                style: TextStyle(fontSize: 12, color: Color(0xff787878)),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => PayTransfer()));
            },
          ),
          InkWell(
            child: EasyAround(
              padding: EdgeInsets.only(top: 10),
              top: Image.asset("assets/images/pay_cashout.png", width: 21),
              child: Text(
                '提现',
                style: TextStyle(fontSize: 12, color: Color(0xff787878)),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => PayCashout()));
            },
          )
        ],
      ),
    );
  }
}
