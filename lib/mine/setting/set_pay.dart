import 'package:flutter/material.dart';
import 'package:meimall/mine/pay/pay_identification.dart';

//支付中心
class SetPay extends StatefulWidget {
  @override
  _SetPayState createState() => _SetPayState();
}

class _SetPayState extends State<SetPay> {
  bool _switch_flag = false;

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
        child: Column(
          children: [
            ListTile(
              title: Text('实名认证'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => PayIdentification()));
              },
              trailing: Container(
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '已实名  ',
                      style: TextStyle(color: Color(0xff9B9B9B)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Color(0xff9B9B9B), size: 15)
                  ],
                ),
              ),
            ),
            ListTile(
                title: Text('支付密码设置'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => SetPay()));
                },
                trailing: Icon(Icons.arrow_forward_ios,
                    color: Color(0xff9B9B9B), size: 15)),
            ListTile(
              title: Text('急速支付'),
              subtitle: Text('急速支付，快人一步'),
              trailing: Switch(
                value: _switch_flag,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    _switch_flag = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('小额免密'),
              subtitle: Text('开启后，支付时无需输入密码或指纹'),
              trailing: Switch(
                value: _switch_flag,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    _switch_flag = value;
                  });
                },
              ),
            ),
            ListTile(
                title: Text('自动扣款'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => SetPay()));
                },
                trailing: Icon(Icons.arrow_forward_ios,
                    color: Color(0xff9B9B9B), size: 15)),
            ListTile(
              title: Text('指纹支付'),
              subtitle: Text('开启后，支付时无需输入密码或指纹\n同意《指纹服务协议》'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => SetPay()));
              },
              trailing: Switch(
                value: _switch_flag,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    _switch_flag = value;
                  });
                },
              ),
            ),
            ListTile(
                title: Text('常见问题'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => SetPay()));
                },
                trailing: Icon(Icons.arrow_forward_ios,
                    color: Color(0xff9B9B9B), size: 15)),
          ],
        ),
      ),
    );
  }
}
