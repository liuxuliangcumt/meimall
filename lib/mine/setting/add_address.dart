import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//添加地址
class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  int sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新建收货地址'),
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
        padding: EdgeInsets.only(left: 22, right: 22),
        child: Column(
          children: [
            Container(
              height: 58,
              child: Row(
                children: [
                  Text(
                    '收货地址',
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "点击选择地址", border: InputBorder.none),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0x22C3AB87),
                        borderRadius: BorderRadius.circular(15)),
                    child: EasyAround(
                      child: Text(
                        '点击选择',
                        style:
                            TextStyle(fontSize: 12, color: Constants.mainColor),
                      ),
                      left: Icon(
                        Icons.location_on,
                        size: 15,
                        color: Constants.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 58,
              child: Row(
                children: [
                  Text(
                    '门  牌  号',
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "例：10号楼12F1201室", border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  activeColor: Constants.mainColor,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                ),
                Text("男："),
                SizedBox(width: 20),
                Radio(
                  value: 2,
                  activeColor: Constants.mainColor,
                  groupValue: this.sex,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                ),
                Text("女："),
              ],
            ),
            Container(
              height: 58,
              child: Row(
                children: [
                  Text(
                    '联  系  人',
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "请输入收件人手机号", border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 58,
              child: Row(
                children: [
                  Text(
                    '标         签',
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0x22C3AB87),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text('家'),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0x22C3AB87),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text('公司'),
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0x22C3AB87),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text('学校'),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top:80),
              child: MaterialButton(
                  onPressed: () {

                  },
                  minWidth: 200,
                  height: 40,
                  shape: StadiumBorder(),
                  textColor: Colors.white,
                  color: Color(0xffC3AB87),
                  child: Text(
                    '保存',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
