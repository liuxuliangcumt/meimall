import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/loginandregister/register.dart';
import 'package:meimall/main.dart';
import 'package:meimall/netUtil/NetUtil.dart';
import 'package:meimall/netUtil/neturls.dart';
import 'package:meimall/src/colors/themecolors.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 22.5, right: 22.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("欢迎\n来到美城茂",
                  style: TextStyle(fontSize: 28.5, color: Color(0xff2f2f2f))),
              SizedBox(height: 65),
              TextField(
                controller: accountController,
                decoration: InputDecoration(
                  hintText: "请输入账号",
                  prefixIcon: Icon(Icons.phone_android),
                  focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green, //边框颜色为绿色
                    width: 1, //宽度为5
                  )),
                ),
                keyboardType: TextInputType.phone,
                style: TextStyle(fontSize: 15),
              ), //账号
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.lock_outline),
                  focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.green, //边框颜色为绿色
                    width: 1, //宽度为5
                  )),
                ),
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(fontSize: 15),
              ), //密码
              Container(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Text('手机验证码登录', style: TextStyle(fontSize: 10)),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(top: 12, bottom: 12),
                        child: Text(
                          '忘记密码？',
                          style: TextStyle(
                              fontSize: 10, color: ThemeColors.colorTheme),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(children: [
                    Expanded(
                      child: MaterialButton(
                          onPressed: () {
                            loginAccount();
                          },
                          height: 50,
                          shape: StadiumBorder(),
                          textColor: Colors.white,
                          color: Color(0xffC3AB87),
                          child: Text(
                            "登录",
                            style: TextStyle(fontSize: 20),
                          )),
                    )
                  ])), //button

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text("还没有账号？立即注册", style: TextStyle(fontSize: 7)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loginAccount() {
    String phone = accountController.text.toString();
    String pwd = passwordController.text.toString();
    if (phone.length == 0 || pwd.length == 0) {
      showToast("请输入账户和密码");
      return;
    }
  /*  NetUtil.post(
        NetUrls.login, {"login_id": phone, "login_pass": pwd}, (result) {},
        (error) {
      showToast("请求错误");
      print("出错了");
      print(error);
    });*/

    NetUtil.post(NetUrls.login, {"login_id": phone, "login_pass": pwd},
        (result) {
      saveLoginResult(result.data);
      Navigator.pop(context, result.data);

      /*
          {
    "user": {
        "meicheng_sess_uid": 1710,
        "meicheng_sess_id": "18200218723",
        "user_id": 1710,
        "username": "18200218723",
        "nickname": "18200218723",
        "chatSessionId": ""
    },
    "token": {
        "client_id": 1710,
        "group_id": 1,
        "username": "18200218723",
        "rank_list": "board",
        "corp_id": 1,
        "client_type": 1,
        "platform": "app",
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhcGkiLCJhdWQiOjE3MTAsImRhdGEiOnsiYSI6MTcxMCwidCI6MSwiZyI6MSwidSI6IjE4MjAwMjE4NzIzIiwiciI6ImJvYXJkIn0sImV4cCI6MTU5MzE4NzA1OSwic2NvcGUiOiJhY2Nlc3MiLCJqdGkiOiI1ZWY1ZmVkMzY4Njk0In0.SypRlhxgTkzYCQp6e-BWNez6v1o8wMv4Yh4GUeYu87c",
        "token_expires": 1594475859,
        "refresh": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhcGkiLCJhdWQiOjE3MTAsImRhdGEiOnsiYSI6MTcxMCwidCI6MSwiZyI6MSwidSI6IjE4MjAwMjE4NzIzIiwiciI6ImJvYXJkIn0sImV4cCI6MTU5NDQ3NTg1OSwic2NvcGUiOiJyZWZyZXNoIiwianRpIjoiNWVmNWZlZDM2OGIxZCJ9.-E1wDsKFvEWWr1GzicghTbVm3a9GRpYx3xOimymU5RA",
        "refresh_expires": 1594475859
    }
}
*/
    }, (error) {
      showToast("登录失败");
    });
  }

  void saveLoginResult(data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("login", data.toString());
  }
}
