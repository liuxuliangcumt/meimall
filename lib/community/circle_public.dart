//圈子里发布帖子
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

class CirclePublic extends StatefulWidget {
  @override
  _CirclePublicState createState() => _CirclePublicState();
}

class _CirclePublicState extends State<CirclePublic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '舌尖上的北京',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          InkWell(
            child: Container(
              alignment: Alignment.center,
              child: Text('发布', style: TextStyle(color: Constants.mainColor)),
            ),
          ),
          SizedBox(width: 20)
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Container(
                  padding: EdgeInsets.all(22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        minLines: 6,
                        maxLines: 50,
                        decoration: InputDecoration(
                            hintText: "此刻所想...", border: InputBorder.none),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Icon(Icons.add, size: 31, color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      EasyAround(
                        child: Expanded(
                          child: Text(
                            '扩展链接',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2A2A2A),
                            ),
                          ),
                        ),
                        right: Icon(Icons.arrow_forward_ios,
                            size: 20, color: Color(0xff777777)),
                      ),
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        color: Color(0xffF1F1F1),
                      ),
                      EasyAround(
                        child: Expanded(
                          child: Text(
                            '添加位置',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2A2A2A),
                            ),
                          ),
                        ),
                        right: Icon(Icons.arrow_forward_ios,
                            size: 20, color: Color(0xff777777)),
                      ),
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        color: Color(0xffF1F1F1),
                      ),
                      EasyAround(
                        child: Expanded(
                          child: Text(
                            '选择话题',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2A2A2A),
                            ),
                          ),
                        ),
                        right: Icon(Icons.arrow_forward_ios,
                            size: 20, color: Color(0xff777777)),
                      ),
                      SizedBox(height: 20),
                      Wrap(
                        spacing: 10,
                        runSpacing: 15,
                        children: [
                          Container(
                            height: 26,
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 3),
                            decoration: BoxDecoration(
                                color: Color(0xffF7F7F7),
                                borderRadius: BorderRadius.circular(13)),
                            child: Text('#零食分享',
                                style: TextStyle(
                                    color: Constants.mainColor, fontSize: 12)),
                          ),
                          Container(
                            height: 26,
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 3),
                            decoration: BoxDecoration(
                                color: Color(0xffF7F7F7),
                                borderRadius: BorderRadius.circular(13)),
                            child: Text('#年味儿',
                                style: TextStyle(
                                    color: Constants.mainColor, fontSize: 12)),
                          ),
                          Container(
                            height: 26,
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 3),
                            decoration: BoxDecoration(
                                color: Color(0xffF7F7F7),
                                borderRadius: BorderRadius.circular(13)),
                            child: Text('#年夜饭',
                                style: TextStyle(
                                    color: Constants.mainColor, fontSize: 12)),
                          ),
                          Container(
                            height: 26,
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 3),
                            decoration: BoxDecoration(
                                color: Color(0xffF7F7F7),
                                borderRadius: BorderRadius.circular(13)),
                            child: Text('#探店',
                                style: TextStyle(
                                    color: Constants.mainColor, fontSize: 12)),
                          ),
                          Container(
                            height: 26,
                            padding:
                                EdgeInsets.only(left: 10, right: 10, top: 3),
                            decoration: BoxDecoration(
                                color: Color(0xffF7F7F7),
                                borderRadius: BorderRadius.circular(13)),
                            child: Text('#饮料酒水',
                                style: TextStyle(
                                    color: Constants.mainColor, fontSize: 12)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
