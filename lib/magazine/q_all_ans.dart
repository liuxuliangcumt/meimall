import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';

//全部回答
class AllAnswer extends StatefulWidget {
  @override
  _AllAnswerState createState() => _AllAnswerState();
}

class _AllAnswerState extends State<AllAnswer> {
  List<String> data = ["", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(IconData(0xe657, fontFamily: "ali")),
          SizedBox(width: 15),
        ],
        title: Text('中国传统节日—元宵节的起因由来？'),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(22.5),
          child: ListView.builder(
            itemBuilder: listViewItem,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: data.length,
          ),
        ),
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.only(top: 22),
      child: Column(
        children: [
          index == 0
              ? Container()
              : Container(
                  height: 100,
                  child: imageListItem(index),
                ),
          Row(
            children: [
              ClipOval(
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  height: 20,
                  width: 20,
                  imageUrl:
                      "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
                ),
              ),
              SizedBox(width: 10),
              Text('正龙',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              Text('|', style: TextStyle(color: Color(0xffA1A4AF))),
              SizedBox(width: 10),
              Text('时尚博主', style: TextStyle(color: Color(0xffA1A4AF))),
            ],
          ),
          SizedBox(height: 13),
          Text(
            '节假日期间，各地区、各部门要妥善安节假日期间区、节假日期间，各地区、各部门要妥善安节假日期间区、各部门要。',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 15),
          Row(children: [
            EasyAround(
              padding: EdgeInsets.only(right: 8),
              child: Text(
                '14',
                style: TextStyle(color: Colors.grey),
              ),
              right: Image.asset("assets/images/good.png", width: 15),
            ),
            SizedBox(width: 40),
            EasyAround(
              padding: EdgeInsets.only(right: 8),
              child: Text('12', style: TextStyle(color: Colors.grey)),
              right: Icon(
                IconData(0xe601, fontFamily: "ali"),
                size: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 40),
            EasyAround(
              padding: EdgeInsets.only(right: 8),
              child: Text('34', style: TextStyle(color: Colors.grey)),
              right: Image.asset("assets/images/me_message.png", width: 15),
            ),
            Expanded(child: Container()),
            Text('4个月前', style: TextStyle(color: Color(0xffA1A4AF))),
          ]),
          SizedBox(height: 26),
          Container(
            height: 1,
            color: Color(0xaacccccc),
          ),
        ],
      ),
    );
  }

  Widget imageListItem(int num) {
    //int width=  100%index;
    if (num == 1) {
      return Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl:
                    "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
              ),
            ),
          ),
        ],
      );
    } else if (num == 2) {
      return Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl:
                    "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl:
                    "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
              ),
            ),
          ),
        ],
      );
    } else if (num >= 3) {
      return Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl:
                    "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl:
                    "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CachedNetworkImage(
                fit: BoxFit.scaleDown,
                imageUrl:
                    "http://www.meichengmall.com/static/img/u=116606011,2221389896&fm=26&gp=0.cb08c2e3.jpg",
              ),
            ),
          )
        ],
      );
    }
  }
}
