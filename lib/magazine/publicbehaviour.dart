import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';
// 发布动态

class PublicBehaviour extends StatefulWidget {
  @override
  _PublicBehaviourState createState() => _PublicBehaviourState();
}

class _PublicBehaviourState extends State<PublicBehaviour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发动态'),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
              alignment: Alignment.center,
              child: Text('发布',
                  style: TextStyle(fontSize: 14, color: Color(0xffC3AB87)))),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 10, left: 22.5, right: 22.5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              listTitle(),
              TextField(
                decoration: InputDecoration(
                  hintText: "分享新鲜事...",
                ),
                minLines: 6,
                maxLines: 100,
              ),
              localAndHideTog(),
              bottomViews()
            ],
          ),
        ),
      ),
    );
  }

  Widget localAndHideTog() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.all(Radius.circular(18))),
            height: 36,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: EasyAround(
              child: Text(
                '我在这里',
                style: TextStyle(fontSize: 14, color: Color(0x99222222)),
              ),
              left: Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.all(Radius.circular(18))),
            height: 36,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: EasyAround(
              child: Text('公开',
                  style: TextStyle(fontSize: 14, color: Color(0x99222222))),
              padding: EdgeInsets.only(left: 10),
              left: Icon(const IconData(0xe615, fontFamily: "ali"), size: 20),
            ),
          )
        ],
      ),
    );
  }

  Widget listTitle() {
    return Container(
      height: 66,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: new FadeInImage.assetNetwork(
                placeholder: "assets/images/unlogin.png",
                //预览图
                fit: BoxFit.contain,
                image:
                    "http://www.meichengmall.com/static/img/user.5392cec7.png",
                width: 46.0,
                height: 46.0),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '政龙',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomViews() {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe92e, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          Text('@', style: TextStyle(fontSize: 20)),
          Text('#', style: TextStyle(fontSize: 20)),
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe688, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe629, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
