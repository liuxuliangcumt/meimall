import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

// 充值
class PayRecharge extends StatefulWidget {
  @override
  _PayRechargeState createState() => _PayRechargeState();
}

class _PayRechargeState extends State<PayRecharge> {
  int sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('充值'),
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
                padding: EdgeInsets.only(right: 22, left: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text('充值方式'),
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
                    Text('充值金额'),
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
                    Container(
                      height: 74,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color(0xffF1F1F1), width: 1),
                              bottom: BorderSide(
                                  color: Color(0xffF1F1F1), width: 1))),
                      child: ListTile(
                        leading: Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              color: Color(0xffF1F1F1),
                              borderRadius: BorderRadius.circular(18)),
                          child: Image.asset(
                            "assets/images/pay_slices.png",
                            width: 23,
                          ),
                        ),
                        title: Text(
                          '可充值到零钱通',
                          style: TextStyle(fontSize: 15),
                        ),
                        subtitle: Text(
                          '有收益，可直接用于消费',
                          style:
                              TextStyle(fontSize: 11, color: Color(0xff9C9C9C)),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios,
                            color: Color(0xffD0D0D0), size: 15),
                      ),
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
                          "充值",
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
