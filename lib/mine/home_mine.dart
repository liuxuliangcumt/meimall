import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/loginandregister/login.dart';
import 'package:meimall/loginandregister/register.dart';

class HomeMine extends StatefulWidget {
  @override
  _HomeMineState createState() => _HomeMineState();
}

class _HomeMineState extends State<HomeMine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 10),
                  Image.asset("assets/images/me_message.png", width: 25),
                  SizedBox(width: 15),
                  Image.asset("assets/images/camera.png", width: 25)
                ],
              ),
              padding:
              EdgeInsets.only(left: 22, right: 22, top: 40, bottom: 20),
            ),
            info(),
            funcs(),
            funcList(),
          ],
        ),
      ),
    );
  }

//个人登录 信息
  Widget info() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          child: Image.asset("assets/images/unlogin.png"
              ""),
          onTap: () {
            // todo   去登陆
            toLoginPage();
          },
        ),
        SizedBox(
          width: 15,
        ),
        Text("未登录，点击头像登录")
      ],
    );
  }

  Widget funcs() {
    return Container(
      margin: EdgeInsets.only(top: 55, bottom: 44, left: 22, right: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getFunc("assets/images/me_scan.png", "扫一扫"),
          getFunc("assets/images/me_pay.png", "付款"),
          getFunc("assets/images/me_payed.png", "收款"),
        ],
      ),
    );
  }

  Widget getFunc(String path, String name) {
    return Column(
      children: [
        Image.asset(
          path,
          width: 25,
        ),
        SizedBox(
          height: 5,
        ),
        Text(name, style: TextStyle(fontSize: 12, color: Color(0xff777777)))
      ],
    );
  }

  Widget funcList() {
    return Column(
      children: [
        funcRow("assets/images/me_info.png", "我的信息", () {
          print("我的信息");
        }),
        funcRow("assets/images/me_order.png", "订单", () {
          print("我的信息 订单");
        }),
        funcRow("assets/images/me_store.png", "收藏", () {
          print("我的信息 收藏");
        }),
        funcRow("assets/images/me_pay_i.png", "支付", () {
          print("我的信息 支付");
        }),
        funcRow("assets/images/me_zone.png", "空间", () {
          print("我的信息 空间");
        }),
        funcRow("assets/images/me_shop.png", "小店", () {
          print("我的信息 小店");
        }),
        funcRow("assets/images/me_vip.png", "会员", () {
          print("我的信息 会员");
        }),
        funcRow("assets/images/me_setting.png", "设置", () {
          print("我的信息 设置");
        }),
      ],
    );
  }

  Widget funcRow(String path, String name, Function d) {
    return InkWell(
      child: Container(
          height: 60,
          padding: EdgeInsets.only(top: 15, bottom: 15, right: 22, left: 22),
          child: Row(
            children: [
              Image.asset(path, width: 20, height: 20),
              SizedBox(width: 15),
              Expanded(child: Text(name, style: TextStyle(fontSize: 15))),
              Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xffD0D0D0))
            ],
          )),
      onTap: () {
        print("dianjiel");
        d.call();
      },
    );
  }

  void toLoginPage() async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => Login()));
    Map<String, dynamic> loginResult = result;
    loginResult.forEach((key, value) {
      print("登录结果： key: $key  value：$value");
    });
  }
}
