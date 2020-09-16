import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//留言
class ZoneWord extends StatefulWidget {
  @override
  _ZoneWordState createState() => _ZoneWordState();
}

class _ZoneWordState extends State<ZoneWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('留言'),
        elevation: 0,
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
        child: ListView.builder(
          itemBuilder: listViewItem,
          itemCount: 6,
        ),
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    if (index == 0) {
      return Container(
        height: 38,
        margin: EdgeInsets.only(top: 20, bottom: 20),
        padding: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          color: Color(0xffF7F7F7),
          borderRadius: BorderRadius.circular(19),
        ),
        child: TextField(
          decoration:
              InputDecoration(hintText: "留个言吧~", border: InputBorder.none),
        ),
      );
    } else {
      return Container(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            listTitle(),
            Container(
              padding: EdgeInsets.only(left: 55),
              child: Text(
                '记录不一样的元宵节。记录不一样的元宵节记录。',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
            Container(
              height: 38,
              margin: EdgeInsets.only(top: 20, bottom: 20),
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.circular(19),
              ),
              child: TextField(
                decoration:
                    InputDecoration(hintText: "留言", border: InputBorder.none),
              ),
            ),
            Visibility(
              visible: index % 2 == 0,
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 4),
                child: Text(
                  '全部评论6条',
                  style: TextStyle(fontSize: 15, color: Color(0xff9C9C9C)),
                ),
              ),
            ),
            Visibility(
              visible: index % 2 == 0,
              child: Container(
                margin: EdgeInsets.only(bottom: 24, top: 4),
                child: ListView.builder(
                  itemBuilder: commListViewItem,
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  Widget listTitle() {
    return Container(
      height: 66,
      // margin: EdgeInsets.only(top: 20),
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
          Expanded(
            child: EasyAround(
              columnCrossAxisAlignment: CrossAxisAlignment.start,
              rowMainAxisAlignment: MainAxisAlignment.start,
              top: Text(
                '政龙',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              child: Text(
                '时尚博主',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          Icon(
            const   IconData(0xe657, fontFamily: "ali"),
            size: 20,
          )
        ],
      ),
    );
  }

  Widget commListViewItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),
      child:  RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "ZOYY",
              style: TextStyle(color: Constants.mainColor, fontSize: 12)),
          TextSpan(
              text: ":大部分好的好",
              style: TextStyle(color:  Colors.black, fontSize: 12))
        ]),
      ),
    );
  }
}
