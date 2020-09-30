import 'package:flutter/material.dart';

//申请成为回收员
class ApplyRecycler extends StatefulWidget {
  @override
  _ApplyRecyclerState createState() => _ApplyRecyclerState();
}

class _ApplyRecyclerState extends State<ApplyRecycler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('申请成为回收员'),
        elevation: 0,
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
                padding: EdgeInsets.only(left: 22, right: 22),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Text(
                            '姓      名',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff787878)),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "请输入姓名",
                                border: InputBorder.none,
                                labelStyle: TextStyle(fontSize: 16)),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Text(
                            '手      机',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff787878)),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "请输入手机号码",
                                border: InputBorder.none,
                                labelStyle: TextStyle(fontSize: 16)),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Text(
                            '身 份 证',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff787878)),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "请输入身份证号码",
                                border: InputBorder.none,
                                labelStyle: TextStyle(fontSize: 16)),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      child: Row(
                        children: [
                          Expanded(child: Image.asset("")),
                          SizedBox(width: 30),
                          Expanded(child: Image.asset(""))
                        ],
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
