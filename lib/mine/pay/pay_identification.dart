import 'package:flutter/material.dart';

//实名认证
class PayIdentification extends StatefulWidget {
  @override
  _PayIdentificationState createState() => _PayIdentificationState();
}

class _PayIdentificationState extends State<PayIdentification> {
  TextStyle title = TextStyle(fontSize: 13, color: Colors.black);
  TextStyle sub = TextStyle(fontSize: 14, color: Color(0xff777777));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('实名认证中心'),
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
                padding: EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('证件信息', style: title),
                    Container(
                      color: Colors.grey,
                      height: 0.5,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('姓      名'),
                          SizedBox(width: 20),
                          Text('默默大师', style: sub)
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('性      别'),
                          SizedBox(width: 20),
                          Expanded(child: Text('男', style: sub)),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('国      籍'),
                          SizedBox(width: 20),
                          Text('中国', style: sub)
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('证件类型'),
                          SizedBox(width: 20),
                          Expanded(child: Text('居民身份证', style: sub)),
                          Icon(Icons.arrow_forward_ios,
                              size: 15, color: Colors.grey)
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('证件号码'),
                          SizedBox(width: 20),
                          Text('320520199312056598', style: sub)
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('证件有效\n期'),
                          SizedBox(width: 20),
                          Text('待完善', style: sub)
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('身份证照'),
                          SizedBox(width: 20),
                          Text('已上传', style: sub)
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Text('其他信息', style: title),
                    Container(
                      color: Colors.grey,
                      height: 0.5,
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('职业类别'),
                          SizedBox(width: 20),
                          Text('企业工作人员', style: sub),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        children: [
                          Text('地      址'),
                          SizedBox(width: 20),
                          Expanded(child: Text('中国大陆   江苏   苏州', style: sub)),
                          Icon(Icons.arrow_forward_ios,
                              size: 15, color: Colors.grey)
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
