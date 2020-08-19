//圈子个人主页
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

import 'circle_public.dart';

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
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child: EasyAround(
                child: Text(
                  "发帖",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                top: Icon(
                  IconData(0xe647, fontFamily: "ali"),
                  color: Colors.black,
                )),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => CirclePublic()));
            },
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
          Expanded(
              child: TabBarView(
            children: [tabView(), tabView()],
          ))
        ],
      ),
    );
  }

  Widget tabView() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: listViewItem,
      shrinkWrap: true,
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          EasyAround(
            padding: EdgeInsets.only(left: 10),
            rowMainAxisAlignment: MainAxisAlignment.start,
            child:
                Text("政龙", style: TextStyle(fontSize: 15, color: Colors.black)),
            left: ClipOval(
                child: new FadeInImage.assetNetwork(
                    placeholder: "assets/images/unlogin.png",
                    //预览图
                    fit: BoxFit.contain,
                    image:
                        "http://www.meichengmall.com/static/img/user.5392cec7.png",
                    width: 35,
                    height: 35)),
          ),
          SizedBox(height: 15),
          Text(
            '记录不一记录不得得录不一样的元宵节',
            style: TextStyle(fontSize: 14, color: Color(0xff2C2C2C)),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            child: imageListItem(index),
          ),
          SizedBox(height: 20),
          Text(
            '#年味儿 ',
            style: TextStyle(fontSize: 13, color: Color(0xffA1A4AF)),
          ),
          SizedBox(height: 20),
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
