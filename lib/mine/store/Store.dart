import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//收藏
class MineStore extends StatefulWidget {
  @override
  _MineStoreState createState() => _MineStoreState();
}

class _MineStoreState extends State<MineStore> {
  List<Widget> tabView = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabView.add(ListView.builder(
      itemBuilder: shopView,
      itemCount: 10,
    ));
    tabView.add(ListView.builder(
      itemBuilder: storeView,
      itemCount: 10,
    ));
    tabView.add(ListView.builder(
      itemBuilder: contentView,
      itemCount: 10,
    ));
    tabView.add(ListView.builder(
      itemBuilder: TalentView,
      itemCount: 10,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('收藏'),
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          actions: [Icon(Icons.search), SizedBox(width: 20)],
          bottom: TabBar(
            tabs: getTabBar(),
            indicatorColor: Constants.mainColor,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 17, color: Color(0xff020202)),
            unselectedLabelStyle:
                TextStyle(fontSize: 14, color: Color(0xffB5B5B5)),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20),
          color: Colors.white,
          child: TabBarView(
            children: tabView,
          ),
        ),
      ),
    );
  }

  List<Widget> getTabBar() {
    List<Widget> tab = [];
    tab.add(Text('商品'));
    tab.add(Text('店铺'));
    tab.add(Text('内容'));
    tab.add(Text('达人'));
    return tab;
  }

  Widget shopView(BuildContext context, int index) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width - 44,
      margin: EdgeInsets.only(left: 22, right: 22),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1811343240,3773288978&fm=26&gp=0.jpg",
            width: 110,
            fit: BoxFit.cover,
            height: 110,
          ),
          SizedBox(width: 15),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width - 169,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '翡翠玻璃种无暇无裂戒子-18K黑金镶嵌',
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Text(
                  '497人收藏    50人推荐',
                  style: TextStyle(fontSize: 12, color: Color(0xff777777)),
                ),
                Expanded(
                  child: Container(),
                ),
                Row(
                  children: [
                    Text(
                      '￥1999',
                      style:
                          TextStyle(fontSize: 18, color: Constants.mainColor),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    EasyAround(
                      child: Text('推荐'),
                      height: 22,
                      padding: EdgeInsets.only(left: 5),
                      left: Icon(
                        IconData(0xe82a, fontFamily: "ali"),
                        size: 13,
                      ),
                      outPadding: EdgeInsets.only(left: 10, right: 10),
                      boxDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(color: Colors.grey, width: 1)),
                    ),
                    SizedBox(width: 10),
                    EasyAround(
                      height: 22,
                      outPadding: EdgeInsets.only(left: 10, right: 10),
                      boxDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Text('找相似'),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget storeView(BuildContext context, int index) {
    return Container(
      height: 65,
      alignment: Alignment.centerLeft,
      child: ListTile(
        leading: ClipOval(
          child: Container(
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1811343240,3773288978&fm=26&gp=0.jpg",
              ),
              width: 42,
              height: 42),
        ),
        title: Text(
          '永和豆浆旗舰店',
          style: TextStyle(fontSize: 16, color: Color(0xff2C2C2C)),
        ),
        trailing: Icon(
          IconData(0xe657, fontFamily: "ali"),
          size: 15,
        ),
      ),
    );
  }

  Widget contentView(BuildContext context, int index) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width - 44,
      margin: EdgeInsets.only(left: 22, right: 22),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1811343240,3773288978&fm=26&gp=0.jpg",
            width: 110,
            fit: BoxFit.cover,
            height: 110,
          ),
          SizedBox(width: 15),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width - 169,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '翡翠玻璃种无暇无裂戒子-18K黑金镶嵌',
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Text(
                  '98平米的小户型，经过巧妙设计，轻松打造出120+平米三室两厅氛围感的家...',
                  maxLines: 2,
                  style: TextStyle(fontSize: 12, color: Color(0xff777777)),
                ),
                Expanded(
                  child: Container(),
                ),
                Row(
                  children: [
                    Text(
                      '商城头条',
                      style: TextStyle(fontSize: 8, color: Constants.mainColor),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      '2020-05-12',
                      style: TextStyle(fontSize: 10, color: Color(0xff9C9C9C)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget TalentView(BuildContext context, int index) {
    return Container(
      height: 65,
      alignment: Alignment.centerLeft,
      child: ListTile(
        leading: ClipOval(
          child: Container(
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1811343240,3773288978&fm=26&gp=0.jpg",
              ),
              width: 42,
              height: 42),
        ),
        title: Text(
          '永和豆浆旗舰店',
          style: TextStyle(fontSize: 16, color: Color(0xff2C2C2C)),
        ),
        subtitle: index % 2 == 0
            ? null
            : Text(
                '淘宝红人',
                style: TextStyle(fontSize: 12, color: Color(0xffA1A4AF)),
              ),
        trailing: Icon(
          IconData(0xe657, fontFamily: "ali"),
          size: 15,
        ),
      ),
    );
  }
}
