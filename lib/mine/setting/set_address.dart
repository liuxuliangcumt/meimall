import 'package:flutter/material.dart';

import 'add_address.dart';

//设置收货地址
class SetAddress extends StatefulWidget {
  @override
  _SetAddressState createState() => _SetAddressState();
}

class _SetAddressState extends State<SetAddress> {
  List<String> addressData = ["", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的收货地址'),
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
        padding: EdgeInsets.only(left: 22, right: 20),
        child: ListView.builder(
          itemBuilder: listViteItem,
          itemCount: 5,
        ),
      ),
    );
  }

  Widget listViteItem(BuildContext context, int index) {
    if (index == addressData.length) {
      return Container(
        margin: EdgeInsets.only(left: 50, right: 50, top: 30),
        child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => AddAddress()));
            },
            minWidth: 200,
            height: 40,
            shape: StadiumBorder(),
            textColor: Colors.white,
            color: Color(0xffC3AB87),
            child: Text(
              '新增收货地址',
              style: TextStyle(color: Colors.white),
            )),
      );
    } else {
      return Container(
        height: 98,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.3))),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              child: Text(
                '收货人：默默大师',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Positioned(
              top: 20,
              right: 0,
              child: Text(
                '12345678912',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Positioned(
              bottom: 20,
              child: Text(
                '收货地址：江苏省苏州市高新区金山路星韵花苑2期南组团8栋1204',
                style: TextStyle(fontSize: 12, color: Color(0xff777777)),
              ),
            )
          ],
        ),
      );
    }
  }
}
