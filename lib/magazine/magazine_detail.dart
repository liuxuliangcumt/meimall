import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//杂志详情
class MagazineDetail extends StatefulWidget {
  @override
  _MagazineDetailState createState() => _MagazineDetailState();
}

class _MagazineDetailState extends State<MagazineDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: bottomViews(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 56),
            child: SingleChildScrollView(
              child: Container(
                child: columnView(),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).systemGestureInsets.top),
            child: Row(
              children: [
                SizedBox(width: 20),
                InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Container(),
                ),
                InkWell(
                  child: Icon(Icons.camera_alt, color: Colors.white),
                  onTap: () {},
                ),
                SizedBox(width: 20)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget columnView() {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl:
              "http://www.meichengmall.com/static/img/933b4079103743d094261ae6ca733fa4_th.8252b817.jpg",
        ),
        Container(
          padding: EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('科普中国传统节日元宵节的起因由来', style: TextStyle(fontSize: 24)),
              SizedBox(height: 25),
              EasyAround(
                child: Expanded(
                  child: Text(
                    '02-07',
                    style: TextStyle(fontSize: 13, color: Color(0xffA2A4B0)),
                  ),
                ),
                right: Text(
                  '6187人浏览',
                  style: TextStyle(fontSize: 13, color: Color(0xffA2A4B0)),
                ),
              ),
              SizedBox(height: 35),
              Row(
                children: [
                  ClipOval(
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      height: 42,
                      width: 42,
                      imageUrl:
                          "http://www.meichengmall.com/static/img/933b4079103743d094261ae6ca733fa4_th.8252b817.jpg",
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(child: Text('政龙', style: TextStyle(fontSize: 16))),
                  MaterialButton(
                    minWidth: 70,
                    height: 30,
                    onPressed: () {},
                    color: Constants.mainColor,
                    shape: StadiumBorder(),
                    child: Text('关注',
                        style: TextStyle(fontSize: 14, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(height: 22),
              Text(
                '苏州~元宵节#开心#',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 15),
              Text(
                '记录不一样的元宵节记录不一样的元宵节宵记录不一样的元宵节。记录不一样的元宵节节。记录不一样的元宵节记录不一样的元节宵节记录不一样的元宵节。记录不一样的节元宵节。记录不一样的元宵节记录不一样节的元宵节记录不一样的元宵节。',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Container(
                height: 0.5,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                color: Colors.grey,
              ),
              Container(
                child: Text(
                  '推荐',
                  style: TextStyle(color: Color(0xff9C9C9C)),
                ),
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: relationListViewItem,
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    '精选评论',
                    style: TextStyle(color: Color(0xff9C9C9C)),
                  )),
              ListView.builder(
                itemBuilder: listViewItem,
                itemCount: 4,
                shrinkWrap: true,
                physics: new NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget relationListViewItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xffF1F1F1), width: 1))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            height: 105,
            width: 105,
            fit: BoxFit.cover,
            imageUrl:
                "http://www.meichengmall.com/static/img/933b4079103743d094261ae6ca733fa4_th.8252b817.jpg",
          ),
          Expanded(
            child: Container(
              height: 105,
              padding: EdgeInsets.only(left: 17),
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      '记录不一样的元宵节记录不一样的元宵节',
                      style: TextStyle(fontSize: 15, color: Color(0xff2A2A2A)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: EasyAround(
                      padding: EdgeInsets.only(left: 5),
                      left: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xff9C9C9C),
                        size: 15,
                      ),
                      child: Text('2万',
                          style: TextStyle(
                              color: Color(0xff9C9C9C), fontSize: 13)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 50,
                    child: EasyAround(
                      padding: EdgeInsets.only(left: 5),
                      left: Icon(
                        Icons.message,
                        color: Color(0xff9C9C9C),
                        size: 15,
                      ),
                      child: Text('2万',
                          style: TextStyle(
                              color: Color(0xff9C9C9C), fontSize: 13)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.only(top: 22, bottom: 22),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xffF1F1F1), width: 1))),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Column(
                  children: [
                    Column(
                      children: [
                        new FadeInImage.assetNetwork(
                            placeholder: "assets/images/unlogin.png",
                            //预览图
                            fit: BoxFit.contain,
                            image:
                                "http://www.meichengmall.com/static/img/user.5392cec7.png",
                            width: 46.0,
                            height: 46.0),
                      ],
                    ),
                  ],
                ),
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
            child: Text('记录不一样的元宵节。记录不一样的元宵节记录 记录不一样的元宵节记录。'),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, top: 15),
            padding: EdgeInsets.all(10),
            color: Colors.grey[200],
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: commentListItem,
            ),
          ),
        ],
      ),
    );
  }

  Widget commentListItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "张杰ZY00", style: TextStyle(color: Constants.mainColor)),
          TextSpan(
              text: ":大部大部分好啊好啊大部分好啊好啊大部分好啊好啊大部分好啊好啊分好啊好啊",
              style: TextStyle(color: Colors.grey))
        ]),
      ),
    );
  }

  Widget bottomViews() {
    return Container(
      height: 56,
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: 150,
            height: 38,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(Radius.circular(19))),
            child: Text('我也来说',
                style: TextStyle(fontSize: 14, color: Color(0xffBCBCBC))),
          ),
          Expanded(child: Container()),
          EasyAround(
            child: Text('34', style: TextStyle(color: Colors.grey)),
            top: Image.asset("assets/images/me_message.png", width: 15),
          ),
          SizedBox(width: 40),
          EasyAround(
            child: Text('12', style: TextStyle(color: Colors.grey)),
            top: Icon(
              IconData(0xe601, fontFamily: "ali"),
              size: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 40),
          EasyAround(
            child: Text(
              '14',
              style: TextStyle(color: Colors.grey),
            ),
            top: Image.asset("assets/images/good.png", width: 15),
          ),
          SizedBox(width: 40),
          EasyAround(
            child: Text(
              '14',
              style: TextStyle(color: Colors.grey),
            ),
            top: Icon(IconData(0xe602, fontFamily: "ali"),
                size: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
