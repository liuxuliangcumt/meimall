import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/mine/setting/set_address.dart';
import 'package:meimall/mine/setting/set_pay.dart';
import 'package:meimall/mine/setting/set_safe_center.dart';

//设置主页
class SetHome extends StatefulWidget {
  @override
  _SetHomeState createState() => _SetHomeState();
}

class _SetHomeState extends State<SetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
                title: Text('个人信息'),
                subtitle: Text('头像、昵称、收货地址'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => SetAddress()));
                },
                trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(
                title: Text('账号与安全'),
                subtitle: Text('修改密码、修改手机号码、账号绑定管理'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => SetSafeCenter()));
                },
                trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(
                title: Text('支付设置'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => SetPay()));

                },
                trailing: Icon(Icons.arrow_forward_ios)),
            ListTile(
                title: Text('通用'),
                onTap: () {},
                trailing: Icon(Icons.arrow_forward_ios)),
            SizedBox(height: 38),
            MaterialButton(
                onPressed: () {},
                minWidth: 200,
                height: 40,
                shape: StadiumBorder(),
                textColor: Colors.white,
                color: Color(0xffC3AB87),
                child: Text(
                  '退出账号',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
