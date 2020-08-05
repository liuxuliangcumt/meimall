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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
                child: Image.asset("assets/images/camera.png", width: 25),
                onTap: () {})
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
        Icon(Icons.search, size: 17, color: Colors.grey),
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
      padding: EdgeInsets.all(3),
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
                        "http://www.meichengmall.com/static/img/user.5392cec7.png",
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
                style: TextStyle(fontSize: 12, color: Color(0xff9C9C9C)))
          ],
        ),
      ),
    );
  }

  Widget listView() {
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
        child: Column(
          children: [listTitle()],
        ),
      );
    } else if (index == 2) {
      return Container();
    } else {
      return Container();
    }
  }

  Widget listTitle() {
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
          MaterialButton(
            child: Text('关注'),
            color: Color(0x66C3AB87),
          )
        ],
      ),
    );
  }
}
