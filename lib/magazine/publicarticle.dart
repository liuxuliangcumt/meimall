import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';

//发文章
class PublicArticle extends StatefulWidget {
  @override
  _PublicArticleState createState() => _PublicArticleState();
}

class _PublicArticleState extends State<PublicArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发文章'),
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
              child: Text('下一步',
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
                  hintText: "文章标题",
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 21),
                maxLines: 1,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "输入正文...",
                ),
                minLines: 6,
                maxLines: 100,
              ),
              bottomViews()
            ],
          ),
        ),
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
          InkWell(
            onTap: () {},
            child: Icon(
              const  IconData(0xe681, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe61c, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe630, fontFamily: "ali"),
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
