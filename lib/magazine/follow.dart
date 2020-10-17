import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';

//关注
class Follow extends StatefulWidget {
  @override
  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow> {
  bool isFollow = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
                child: Image.asset("assets/images/camera.png", width: 25),
                onTap: () {}),
            SizedBox(width: 20)
          ],
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Container(
            child: TabBar(
              tabs: [
                Text('关注'),
                Text('推荐'),
              ],
              indicatorColor: Color(0xffC3AB87),
              indicatorPadding: EdgeInsets.only(top: 5),
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: TextStyle(fontSize: 17),
              unselectedLabelStyle: TextStyle(fontSize: 17, color: Colors.grey),
              onTap: (int index) {
                if (index != 0) {
                  isFollow = true;
                } else {
                  isFollow = false;
                }
                setState(() {
                  isFollow = isFollow;
                });
              },
            ),
            width: 140,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  searchBar(),
                  horizontalListView(),
                  listView(),
                ],
              ),
              padding: EdgeInsets.all(22.5)),
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      height: 36,
      padding: EdgeInsets.only(left: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.search, size: 20, color: Colors.grey),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          '搜索您的城市美味',
          style: TextStyle(color: Color(0xffBCBCBC)),
        )),
        EasyAround(
          child: Text('全部'),
          right: Icon(Icons.hourglass_full, size: 14, color: Colors.grey),
          padding: EdgeInsets.only(right: 5),
        ),
        SizedBox(width: 10)
      ]),
      decoration: BoxDecoration(
          color: Color(0xfff7F7F7), borderRadius: BorderRadius.circular(18)),
    );
  }

  Widget horizontalListView() {
    return Container(
      height: 180,
      padding: EdgeInsets.only(top: 33),
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: hListViewItem,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget hListViewItem(BuildContext context, int index) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(1.0, 1.0), blurRadius: 2)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ClipOval(
                child: new FadeInImage.assetNetwork(
                    placeholder: "assets/images/unlogin.png",
                    //预览图
                    fit: BoxFit.contain,
                    image:
                        "http://www.meichengmall.com/wap/static/img/user.5392cec7.png",
                    width: 46.0,
                    height: 46.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('默默大师号',
                style: TextStyle(fontSize: 15, color: Color(0xff040A28))),
            Text('时尚博主',
                style: TextStyle(fontSize: 12, color: Color(0xff9C9C9C))),
            isFollow
                ? MaterialButton(
                    child: Text(
                      '关注',
                      style: TextStyle(fontSize: 14, color: Color(0xaa2C2C2C)),
                    ),
                    color: Color(0x66C3AB87),
                    height: 32,
                    minWidth: 68,
                    onPressed: () {},
                    elevation: 0,
                    shape: StadiumBorder(),
                    textColor: Colors.white,
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  Widget listView() {
    return DemoListView(isFollow);
  }
}

class DemoListView extends StatefulWidget {
  bool isFollow = false;

  DemoListView(this.isFollow);

  @override
  _DemoListViewState createState() => _DemoListViewState(isFollow);
}

class _DemoListViewState extends State<DemoListView> {
  bool isFollow = false;

  _DemoListViewState(this.isFollow);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: listViewItem,
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    if (index == 0) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            listTitle(isFollow),
            Text(
              '记录不一样的元宵节,记录不一样的元宵节,记录不一样的元宵节,记录不一样的元宵节,记录不一样的元宵节,记录不一样的元宵节，记录不一样的元宵节',
              style: TextStyle(fontSize: 15, color: Color(0xff2C2C2C)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                placeholder: (context, url) => new CircularProgressIndicator(),
                errorWidget: (context, url, error) => new Icon(Icons.error),
                imageUrl:
                    "http://www.meichengmall.com/wap/static/img/65aa3d98affd202bf958ed1fc0f3361632544f4dc574-OOkVsF_fw658.f234a506.jpg",
              ),
            ),
            bottomOperation(),
            Container(
              color: Color(0xffF1F1F1),
              margin: EdgeInsets.only(top: 35),
              height: 1,
            ),
          ],
        ),
      );
    } else if (index == 2) {
      return Container(
        child: Column(
          children: [
            listTitle(isFollow),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 120,
              child: Row(
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl:
                        "http://www.meichengmall.com/wap/static/img/ab72f009538c8fa0243d5c6c30226c6eef6eeeb6f4c43-fh1Ne4_fw658.d86589fd.png",
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '用ipad Pro成为你下一台电脑？我们认真比较了一下',
                          style: TextStyle(fontSize: 15),
                          maxLines: 2,
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: EasyAround(
                                child: Text('267',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff2A2A2A))),
                                rowMainAxisAlignment: MainAxisAlignment.start,
                                left: Image.asset(
                                    "assets/images/me_message.png",
                                    width: 14,
                                    height: 14),
                                padding: EdgeInsets.only(left: 5),
                              ),
                            ),
                            Text(
                              '21分钟前',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xff2A2A2A)),
                            ),
                            SizedBox(width: 20)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xffF1F1F1),
              margin: EdgeInsets.only(top: 22, bottom: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 120,
              child: Row(
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl:
                        "http://www.meichengmall.com/wap/static/img/ab72f009538c8fa0243d5c6c30226c6eef6eeeb6f4c43-fh1Ne4_fw658.d86589fd.png",
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '用ipad Pro成为你下一台电脑？我们认真比较了一下',
                          style: TextStyle(fontSize: 15),
                          maxLines: 2,
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: EasyAround(
                                child: Text('267',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff2A2A2A))),
                                rowMainAxisAlignment: MainAxisAlignment.start,
                                left: Image.asset(
                                    "assets/images/me_message.png",
                                    width: 14,
                                    height: 14),
                                padding: EdgeInsets.only(left: 5),
                              ),
                            ),
                            Text('2天前',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xff2A2A2A))),
                            SizedBox(width: 20)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xffF1F1F1),
              margin: EdgeInsets.only(
                top: 22,
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listTitle(isFollow),
            Text('记录不一样的元宵节,\n记录不一样的元宵节,\n记录不一样的元宵节',
                style: TextStyle(fontSize: 15, color: Color(0xff2C2C2C))),
            SizedBox(height: 18),
            Text('#新浪年度车##2019微博最佳',
                style: TextStyle(fontSize: 11, color: Color(0xff988352))),
            SizedBox(height: 15),
            Text('微博最具人气投票',
                style: TextStyle(fontSize: 11, color: Colors.black)),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CachedNetworkImage(
                    imageUrl:
                        "http://www.meichengmall.com/wap/static/img/ab72f009538c8fa0243d5c6c30226c6eef6eeeb6f4c43-fh1Ne4_fw658.d86589fd.png",
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CachedNetworkImage(
                    imageUrl:
                        "http://www.meichengmall.com/wap/static/img/65aa3d98affd202bf958ed1fc0f3361632544f4dc574-OOkVsF_fw658.f234a506.jpg",
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                )
              ],
            ),
            bottomOperation(),
          ],
        ),
      );
    }
  }

  Widget listTitle(bool needFollow) {
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
          needFollow
              ? MaterialButton(
                  child: Text(
                    '关注',
                    style: TextStyle(fontSize: 14, color: Color(0xaa2C2C2C)),
                  ),
                  color: Color(0x66C3AB87),
                  height: 32,
                  minWidth: 68,
                  onPressed: () {},
                  elevation: 0,
                  shape: StadiumBorder(),
                  textColor: Colors.white,
                )
              : Container()
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
            '22 分钟前',
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
          padding: EdgeInsets.only(
            left: 5,
          ),
          child: Text('4',
              style: TextStyle(fontSize: 13, color: Color(0xffA1A4AF))),
          left: Image.asset("assets/images/good.png", width: 14, height: 14),
        ),
      ]),
    );
  }
}
