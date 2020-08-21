import 'package:flutter/material.dart';

//安全中心
class SetSafeCenter extends StatefulWidget {
  @override
  _SetSafeCenterState createState() => _SetSafeCenterState();
}

class _SetSafeCenterState extends State<SetSafeCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('安全中心'),
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
              title: Text('账号'),
            ),
            ListTile(
              title: Text('登录密码'),
              subtitle: Text('安全等级：'),
              trailing: Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '修改  ',
                      style: TextStyle(color: Color(0xff9B9B9B)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Color(0xff9B9B9B), size: 15)
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('账号绑定管理'),
              trailing: Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '绑定/解绑  ',
                      style: TextStyle(color: Color(0xff9B9B9B)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Color(0xff9B9B9B), size: 15)
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('修改手机号码'),
              trailing: Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '1333****785  ',
                      style: TextStyle(color: Color(0xff9B9B9B)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Color(0xff9B9B9B), size: 15)
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('安全'),
              trailing: Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '风险等级：中',
                      style: TextStyle(color: Color(0xff9B9B9B)),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('最近登录记录'),
              trailing: Icon(Icons.arrow_forward_ios,
                  color: Color(0xff9B9B9B), size: 15),
            ),
            ListTile(
              title: Text('账号相关答疑'),
              trailing: Icon(Icons.arrow_forward_ios,
                  color: Color(0xff9B9B9B), size: 15),
            ),
            ListTile(
              title: Text('注销账号'),
              trailing: Container(
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '注销后无法恢复，请谨慎操作  ',
                      style: TextStyle(color: Color(0xff9B9B9B)),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Color(0xff9B9B9B), size: 15)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
