import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  Icon(IconData(0xe611, fontFamily: "ali")),
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
                              subtitle: Text(
                                '留言8    访客82000',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
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
                                  Text('日志', style: whiteStyle),
                                  Text('相册', style: whiteStyle),
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
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey, width: 1))),
                              margin: EdgeInsets.only(left: 22, right: 22),
                              child: Row(
                                children: [
                                  Text(
                                    '2020-05',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                  Image.asset("assets/images/zone_calendar.png")
                                ],
                              ),
                            )
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
}
