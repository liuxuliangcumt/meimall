import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//转账
class PayTransfer extends StatefulWidget {
  @override
  _PayTransferState createState() => _PayTransferState();
}

class _PayTransferState extends State<PayTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('转账'),
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
                padding: EdgeInsets.only(right: 22, left: 22, top: 30),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '对方账户',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "美城账户/手机号码",
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: Image.asset(
                              "assets/images/pay_address_list.png",
                              width: 69,
                              height: 24),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xfff1f1f1)))),
                    ),
                    SizedBox(height: 15),
                    EasyAround(
                      rowMainAxisAlignment: MainAxisAlignment.start,
                      child: Text(
                        '钱将实时转入对方账户，无法退款',
                        style:
                            TextStyle(color: Constants.mainColor, fontSize: 11),
                      ),
                      padding: EdgeInsets.only(left: 5),
                      left: Icon(
                        Icons.warning,
                        color: Constants.mainColor,
                        size: 12,
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (c) => PayTransferSecond()));
                        },
                        height: 42,
                        minWidth: 200,
                        shape: StadiumBorder(),
                        textColor: Colors.white,
                        color: Color(0xffC3AB87),
                        child: Text('下一步'),
                      ),
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
}

//转账第二步
class PayTransferSecond extends StatefulWidget {
  @override
  _PayTransferSecondState createState() => _PayTransferSecondState();
}

class _PayTransferSecondState extends State<PayTransferSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('转账'),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Color(0xffF7F7F7),
                      height: 112,
                      child: EasyAround(
                        child: Text('默默大师'),
                        top: ClipOval(
                          child: new FadeInImage.assetNetwork(
                              placeholder: "assets/images/unlogin.png",
                              //预览图
                              fit: BoxFit.contain,
                              image:
                                  "http://www.meichengmall.com/static/img/user.5392cec7.png",
                              width: 46.0,
                              height: 46.0),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                          top: 30, bottom: 20, right: 22, left: 22),
                      child: Text(
                        '充值金额',
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 22, right: 22, bottom: 20),
                      child: TextField(
                        style: TextStyle(fontSize: 25),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefix: Text(
                          '￥',
                          style: TextStyle(fontSize: 25),
                        )),
                      ),
                    ),
                    Padding(
                      child: Text(
                        '添加转账说明',
                        style: TextStyle(color: Constants.mainColor),
                      ),
                      padding: EdgeInsets.only(left: 22),
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
}
