import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//访客
class ZoneGuest extends StatefulWidget {
  @override
  _ZoneGuestState createState() => _ZoneGuestState();
}

class _ZoneGuestState extends State<ZoneGuest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('我的访客'),
          elevation: 0,
          actions: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                '发表',
                style: TextStyle(fontSize: 13, color: Constants.mainColor),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
          centerTitle: true,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 18),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Constants.mainColor,
            labelPadding: EdgeInsets.only(bottom: 5),
            unselectedLabelStyle:
                TextStyle(fontSize: 15, color: Color(0xffB5B5B5)),
            tabs: <Widget>[
              Text('谁看过我'),
              Text('我看过谁'),
              Text('被挡访客'),
            ],
          ),
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
                  child: Column(
                    children: [
                      Container(
                        height: 138,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            EasyAround(
                              child: Text(
                                '5500',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              bottom: Text(
                                '总浏览量',
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff777777)),
                              ),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Image.asset("assets/images/zone_guest_bg.png",
                                    width: 90, height: 90),
                                Text(
                                  '0人\n今日访客',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Constants.mainColor),
                                ),
                              ],
                            ),
                            EasyAround(
                              child: Text(
                                '5500',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              bottom: Text(
                                '今日浏览量',
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff777777)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 10,
                        color: Color(0xffF7F7F7),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: listViewItem,
                        itemCount: 6,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(left: 22,right: 22),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text('05-02'),
          ),
          ListView.builder(
            itemBuilder: subListViewItem,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
          )
        ],
      ),
    );
  }

  Widget subListViewItem(BuildContext context, int index) {
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
          Expanded(
            child: EasyAround(
              columnCrossAxisAlignment: CrossAxisAlignment.start,
              rowMainAxisAlignment: MainAxisAlignment.start,
              top: Text(
                '默默大师',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              child: Text(
                '17:55 访问了您空间',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ),
          Icon(
            const IconData(0xe657, fontFamily: "ali"),
            size: 20,
          )
        ],
      ),
    );
  }
}
