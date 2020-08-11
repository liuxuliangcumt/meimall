import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//问答详情
class QuestionDetail extends StatefulWidget {
  @override
  _QuestionDetailState createState() => _QuestionDetailState();
}

class _QuestionDetailState extends State<QuestionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.format_list_bulleted),
          SizedBox(width: 15),
        ],
      ),
      body: Container(
          padding: EdgeInsets.only(left: 22.5, right: 22.5, bottom: 22),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                Text('中国传统节日—元宵节的起因由来？',
                    style: TextStyle(fontSize: 24.5, color: Color(0xff040B28))),
                SizedBox(height: 27),
                InkWell(
                    child: EasyAround(
                      child: Text('查看全部28个回答',
                          style: TextStyle(
                              fontSize: 13, color: Color(0xffA1A4AF))),
                      right: Icon(Icons.arrow_forward_ios,
                          color: Colors.grey, size: 18),
                      padding: EdgeInsets.only(right: 5),
                      rowMainAxisAlignment: MainAxisAlignment.start,
                    ),
                    onTap: () {}),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 110,
                      child: EasyAround(
                        padding: EdgeInsets.only(left: 5),
                        left: Icon(IconData(0xe76e, fontFamily: "ali"),
                            size: 16, color: Constants.mainColor),
                        child: Text(
                          '邀请回答',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xffC3AB87)),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffC3AB87), width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 110,
                      child: EasyAround(
                        padding: EdgeInsets.only(left: 5),
                        left: Icon(IconData(0xe647, fontFamily: "ali"),
                            size: 20, color: Constants.mainColor),
                        child: Text('写回答',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffC3AB87))),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffC3AB87), width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
                Container(
                  height: 1,
                  color: Color(0xffF1F1F1),
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                ),
                listTitle(),
                Text(
                  '记录不一样的元宵节记录不一样的元宵节宵记录不一样的元宵节。记录不一样的元宵节记录不一样的元宵节宵记录不一样的元宵节。记录不一样的元宵节节。记录不一样的元宵节记录不一样的元宵记录不一样的元宵节。记录不一样的元宵节节的。记录不一样的元宵节记录不一样的元宵节宵记录不一样的元宵节。记录不一样的元宵节节。记录不一样的元宵节记录。',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(height: 30),
                MaterialButton(
                  height: 36,
                  onPressed: () {},
                  shape: StadiumBorder(),
                  color: Constants.mainColor,
                  child: Text(
                    '赞赏',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                SizedBox(height: 18),
                Text('还没有人赞赏，快来当第一个赞赏的人吧！',
                    style: TextStyle(fontSize: 12, color: Color(0xffA1A4AF))),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('全部评论',
                      style: TextStyle(fontSize: 13, color: Color(0xaa2A2A2A))),
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                ),
                listViewComment(),
              ],
            ),
          )),
    );
  }

  Widget listTitle() {
    return Container(
      height: 85,
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
                '02-08 12:00     时尚博主',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ),
          MaterialButton(
            child: Text(
              '关注',
              style: TextStyle(fontSize: 14, color: Constants.mainColor),
            ),
            color: Color(0x66C3AB87),
            height: 32,
            minWidth: 68,
            onPressed: () {},
            elevation: 0,
            shape: StadiumBorder(),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }

  Widget listViewComment() {
    return ListView.builder(
      itemBuilder: listViewItem,
      itemCount: 6,
      shrinkWrap: true,
      physics: new NeverScrollableScrollPhysics(),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.only(top: 22, bottom: 22),
      decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey,width: 1))),
      child: Column(
        children: [
          Row(
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
                    '02-07',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ),
              EasyAround(
                padding: EdgeInsets.only(right: 5),
                child: Text('7', style: TextStyle(color: Colors.grey)),
                right: Image.asset("assets/images/good.png",
                    color: Colors.grey, width: 15, height: 15),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 50, top: 15),
            child: Text(
                '记录不一样的元宵节。记录不一样的元宵节记录。记录不一样的元宵节。记录不一样的元宵节记录。记录不一样的元宵节。记录不一样的元宵节记录。记录不一样的元宵节。记录不一样的元宵节记录。'),
          )
        ],
      ),
    );
  }
}
