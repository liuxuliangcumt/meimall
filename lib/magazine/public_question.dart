import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:oktoast/oktoast.dart';

class PublicQuestion extends StatefulWidget {
  @override
  _PublicQuestionState createState() => _PublicQuestionState();
}

class _PublicQuestionState extends State<PublicQuestion> {
  List<String> imageData = ["", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('发布提问'),
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text(
              '发布',
              style: TextStyle(color: Constants.mainColor),
            ),
          )
        ],
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
                padding: EdgeInsets.only(top: 22.5, left: 22.5, right: 22.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "文章标题",
                          hintStyle: TextStyle(fontSize: 22)),
                    ),
                    TextField(
                      minLines: 6,
                      maxLines: 100,
                      maxLength: 1000,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "请描述你的问题...",
                          hintStyle: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(height: 15),
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:
                            imageData.length == 6 ? 6 : imageData.length + 1,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        itemBuilder: girdViewItem),
                    Container(
                      color: Colors.grey,
                      height: 0.5,
                      margin: EdgeInsets.only(top: 25, bottom: 10),
                    ),
                    Container(
                      height: 28,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      child: EasyAround(
                        child: Text('金融保险',
                            style: TextStyle(color: Constants.mainColor)),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(color: Colors.grey, height: 0.5),
                    bottomView(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget girdViewItem(BuildContext context, int index) {
    Widget ret = Stack(alignment: Alignment.topRight, children: [
      CachedNetworkImage(
        fit: BoxFit.cover,
        width: 200,
        height: 200,
        imageUrl:
            "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
      ),
      InkWell(
        child: Icon(IconData(0xe619, fontFamily: "ali"), size: 20),
        onTap: () {},
      )
    ]);

    if (imageData.length == 6) {
      return ret;
    } else {
      if (index == 5) {
        return InkWell(
            onTap: () {
              showToast("添加图片");
            },
            child: Icon(Icons.add, size: 35, color: Colors.grey));
      } else {
        return ret;
      }
    }
  }

  Widget bottomView() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/images/camera.png", width: 20),
          Text('#', style: TextStyle(fontSize: 20)),
          Icon(
            IconData(0xe60b, fontFamily: "ali"),
            size: 18,
          )
        ],
      ),
    );
  }
}
