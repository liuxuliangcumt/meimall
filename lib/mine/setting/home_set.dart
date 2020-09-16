import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

//管理应用
class HomeSet extends StatefulWidget {
  @override
  _HomeSetState createState() => _HomeSetState();
}

class _HomeSetState extends State<HomeSet> {
  List funcData = [
    {"img": "assets/images/h_1.png", "name": "杂志"},
    {"img": "assets/images/c_chat.png", "name": "聊天"},
    {"img": "assets/images/h_4.png", "name": "交友"},
    {"img": "assets/images/look.png", "name": "问答"},
    {"img": "assets/images/video.png", "name": "视频"},
    {"img": "assets/images/look.png", "name": "外卖"},
    {"img": "assets/images/h_1.png", "name": "更多"},
  ];
  String right = "编辑";
  bool isEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('管理我的应用'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                isEdit = !isEdit;
                right = isEdit ? "完成" : "编辑";
              });
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                right,
                style: TextStyle(color: Constants.mainColor),
              ),
            ),
          ),
          SizedBox(width: 20)
        ],
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
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Text('你可以将常用的应用添加到美城茂首页，\n也可以按住拖动调整应用的顺序'),
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: funcData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //横轴元素个数
                          crossAxisCount: 5,
                        ),
                        itemBuilder: myGridViewItem),
                    Container(
                      height: 10,
                      color: Color(0xffF7F7F7),
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                    ),
                    Container(
                      height: 30,
                      child: Text(
                        '全部应用',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    funcMoudle("最近使用", funcData.sublist(3)),
                    funcMoudle("时尚杂志", funcData.sublist(5)),
                    funcMoudle("同城社交", funcData.sublist(6)),
                    funcMoudle("生活电商", funcData.sublist(5)),
                    funcMoudle("本地服务", funcData.sublist(5)),
                    funcMoudle("个人中心", funcData.sublist(5)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget myGridViewItem(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 0.3)),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            right: 8,
            top: 8,
            child: Visibility(
              visible: isEdit,
              child: InkWell(
                  onTap: () {},
                  child: Icon(const IconData(0xe616, fontFamily: "ali"), size: 16)),
            ),
          ),
          Positioned(
            child: Column(
              children: [
                SizedBox(
                    child: Image.asset(funcData[index]["img"], width: 20),
                    width: 20,
                    height: 20),
                SizedBox(height: 5),
                Text(funcData[index]["name"]),
              ],
            ),
            top: 15,
          )
        ],
      ),
    );
  }

  Widget nomyGridViewItem(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 0.3)),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            right: 8,
            top: 8,
            child: Visibility(
              visible: isEdit,
              child: InkWell(
                  onTap: () {},
                  child: Icon(const IconData(0xe629, fontFamily: "ali"),
                      color: Constants.mainColor, size: 16)),
            ),
          ),
          Positioned(
            child: Column(
              children: [
                SizedBox(
                    child: Image.asset(funcData[index]["img"], width: 20),
                    width: 20,
                    height: 20),
                SizedBox(height: 5),
                Text(funcData[index]["name"]),
              ],
            ),
            top: 15,
          )
        ],
      ),
    );
  }

  funcMoudle(String s, List<dynamic> funcData) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 22, bottom: 20, top: 20),
            child: Text(s, style: TextStyle(fontSize: 21)),
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: funcData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //横轴元素个数
                crossAxisCount: 5,
              ),
              itemBuilder: nomyGridViewItem),
        ],
      ),
    );
  }
}
