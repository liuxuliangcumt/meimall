import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:meimall/mine/zone/zone_daily.dart';
import 'package:meimall/mine/zone/zone_guest.dart';
import 'package:meimall/mine/zone/zone_photos.dart';
import 'package:meimall/mine/zone/zone_word.dart';

//空间主页
class ZoneHome extends StatefulWidget {
  @override
  _ZoneHomeState createState() => _ZoneHomeState();
}

/* CachedNetworkImage(
            fit: BoxFit.fitWidth,
            imageUrl:
                "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3062551901,2775267194&fm=26&gp=0.jpg",
          )*/
class _ZoneHomeState extends State<ZoneHome> {
  TextStyle whiteStyle = TextStyle(fontSize: 14, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child:
                Image.asset("assets/images/zone_bg.png", fit: BoxFit.fitWidth),
          ),
          Positioned(
            child: Scaffold(
              backgroundColor: Color(0x00ffffff),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Color(0x00ffffff),
                centerTitle: true,
                leading: InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  Icon(Icons.search),
                  SizedBox(width: 20),
                  Icon( const IconData(0xe611, fontFamily: "ali")),
                  SizedBox(width: 20),
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
                        child: Column(
                          children: [
                            ListTile(
                              leading: ClipOval(
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1811343240,3773288978&fm=26&gp=0.jpg",
                                  width: 60,
                                  fit: BoxFit.cover,
                                  height: 60,
                                ),
                              ),
                              title: Text(
                                '90中年少女',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              subtitle: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (c) => ZoneWord()));
                                    },
                                    child: Text(
                                      '留言8   |',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (c) => ZoneGuest()));
                                    },
                                    child: Text(
                                      '    访客82000',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 35),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.home, color: Colors.white),
                                  Text('20', style: whiteStyle),
                                  Text('30', style: whiteStyle),
                                  Text('56', style: whiteStyle),
                                  Text('223', style: whiteStyle),
                                  Text('78', style: whiteStyle)
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('首页', style: whiteStyle),
                                  InkWell(
                                    child: Text('日志', style: whiteStyle),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (c) => ZoneDaily()));
                                    },
                                  ),
                                  InkWell(
                                    child: Text('相册', style: whiteStyle),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (c) => ZonePhotos()));
                                    },
                                  ),
                                  Text('文章', style: whiteStyle),
                                  Text('社区', style: whiteStyle),
                                  Text('说说', style: whiteStyle)
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 62,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffF1F1F1),
                                          width: 0.5))),
                              margin: EdgeInsets.only(left: 22, right: 22),
                              child: Row(
                                children: [
                                  Text(
                                    '2020-05',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Image.asset(
                                    "assets/images/zone_calendar.png",
                                    width: 20,
                                  )
                                ],
                              ),
                            ),
                            ListView.builder(
                              itemCount: 6,
                              itemBuilder: listViewItem,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xffF1F1F1), width: 0.5))),
      margin: EdgeInsets.only(left: 22, right: 22),
      child: Column(
        children: <Widget>[
          listTitle(),
          bottomOperation(),
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
                  InputDecoration(hintText: "评论", border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  Widget listTitle() {
    return Container(
      height: 66,
      margin: EdgeInsets.only(top: 20),
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
                    "http://www.meichengmall.com/wap/static/img/user.5392cec7.png",
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
            const  IconData(0xe657, fontFamily: "ali"),
            size: 20,
          )
        ],
      ),
    );
  }

//时间分享评论点赞条目
  Widget bottomOperation() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(children: [
        Expanded(
          child: Text(
            '浏览23次',
            style: TextStyle(fontSize: 13, color: Color(0xffA1A4AF)),
          ),
        ),
        EasyAround(
          padding: EdgeInsets.only(left: 5, right: 42),
          child: Text('4',
              style: TextStyle(fontSize: 13, color: Color(0xffA1A4AF))),
          left: Image.asset("assets/images/share.png", width: 14, height: 14),
        ),
        Image.asset("assets/images/me_message.png", width: 14, height: 14),
        SizedBox(width: 40),
        EasyAround(
          padding: EdgeInsets.only(left: 5),
          child: Text('4',
              style: TextStyle(fontSize: 13, color: Color(0xffA1A4AF))),
          left: Image.asset("assets/images/good.png", width: 14, height: 14),
        ),
      ]),
    );
  }
}
