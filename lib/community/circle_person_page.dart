//圈子个人主页
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

class CirclePersonPage extends StatefulWidget {
  @override
  _CirclePersonPageState createState() => _CirclePersonPageState();
}

class _CirclePersonPageState extends State<CirclePersonPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Stack(
            children: [
              Positioned(
                height: 113,
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                  height: 170,
                  fit: BoxFit.fitWidth,
                  width: 120,
                  imageUrl:
                      "http://www.meichengmall.com/static/img/65aa3d98affd202bf958ed1fc0f3361632544f4dc574-OOkVsF_fw658.f234a506.jpg",
                ),
              ),
              AppBar(
                actions: [
                  Icon(Icons.file_upload, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.remove_circle_outline, color: Colors.white),
                  SizedBox(width: 20)
                ],
                backgroundColor: Color(0x00ffffff),
                leading: InkWell(
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(top: 113, child: getBody()),
              Positioned(
                top: 102,
                left: 17,
                child: Container(
                  width: 92,
                  height: 92,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(46))),
                  child: ClipOval(
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      width: 86,
                      height: 86,
                      imageUrl:
                          "http://www.meichengmall.com/static/img/user.5392cec7.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget getBody() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 22, right: 22),
      height: MediaQuery.of(context).size.height - 113,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 100, top: 20),
            child: Text(
              '舌尖上的北京',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100, bottom: 30),
            child: Text("1645个成员   222条帖子   公告 >",
                style: TextStyle(fontSize: 12, color: Color(0xff9C9C9C))),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 15,
            children: [
              Container(
                height: 26,
                padding: EdgeInsets.only(left: 10, right: 10, top: 3),
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(13)),
                child: Text('#零食分享',
                    style: TextStyle(color: Constants.mainColor, fontSize: 12)),
              ),
              Container(
                height: 26,
                padding: EdgeInsets.only(left: 10, right: 10, top: 3),
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(13)),
                child: Text('#年味儿',
                    style: TextStyle(color: Constants.mainColor, fontSize: 12)),
              ),
              Container(
                height: 26,
                padding: EdgeInsets.only(left: 10, right: 10, top: 3),
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(13)),
                child: Text('#年夜饭',
                    style: TextStyle(color: Constants.mainColor, fontSize: 12)),
              ),
              Container(
                height: 26,
                padding: EdgeInsets.only(left: 10, right: 10, top: 3),
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(13)),
                child: Text('#探店',
                    style: TextStyle(color: Constants.mainColor, fontSize: 12)),
              ),
              Container(
                height: 26,
                padding: EdgeInsets.only(left: 10, right: 10, top: 3),
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(13)),
                child: Text('全部',
                    style: TextStyle(color: Constants.mainColor, fontSize: 12)),
              ),
            ],
          ),
          SizedBox(height: 57),
          Container(
            width: 150,
            child: TabBar(
              labelPadding: EdgeInsets.all(0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Constants.mainColor,
              labelStyle: TextStyle(fontSize: 17, color: Colors.black),
              unselectedLabelStyle:
                  TextStyle(fontSize: 16, color: Color(0xffB5B5B5)),
              tabs: [Text('最新'), Text('精华')],
            ),
          ),
          TabBarView(
            children: [],
          )
        ],
      ),
    );
  }


}
