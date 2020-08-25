import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

//提现
class PayCashout extends StatefulWidget {
  @override
  _PayCashoutState createState() => _PayCashoutState();
}

class _PayCashoutState extends State<PayCashout> {
  int sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提现'),
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
                padding: EdgeInsets.only(right: 22, left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text('提现到'),
                    SizedBox(height: 15),
                    ListTile(
                      leading: Image.asset("assets/images/pay_ali.png",
                          width: 30, height: 30),
                      title: Text('微信'),
                      trailing: Radio(
                        value: 1,
                        groupValue: this.sex,
                        activeColor: Constants.mainColor,
                        onChanged: (value) {
                          setState(() {
                            this.sex = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/pay_wechat.png",
                          width: 30, height: 30),
                      title: Text('支付宝'),
                      trailing: Radio(
                        value: 2,
                        activeColor: Constants.mainColor,
                        groupValue: this.sex,
                        onChanged: (value) {
                          setState(() {
                            this.sex = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 50),
                    Text('提现金额'),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Color(0xffF1F1F1)))),
                      child: Row(
                        children: [
                          Text(
                            '￥',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: 30),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Text('剩余零钱25.10，'),
                        Text('全部提现',
                            style: TextStyle(color: Constants.mainColor)),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        onPressed: () {},
                        height: 42,
                        minWidth: 200,
                        shape: StadiumBorder(),
                        textColor: Colors.white,
                        color: Color(0xffC3AB87),
                        child: Text(
                          "提现",
                          style: TextStyle(fontSize: 16),
                        ),
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
