import 'package:cached_network_image/cached_network_image.dart';
import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:meimall/beans/banners.dart';
import 'package:meimall/beans/homeshop.dart';
import 'package:meimall/netUtil/NetUtil.dart';
import 'package:meimall/netUtil/neturls.dart';

class HomeShop extends StatefulWidget {
  @override
  _HomeShopState createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop>
    with AutomaticKeepAliveClientMixin {
  @protected
  bool get wantKeepAlive => true;
  String address = "苏州·高新区";
  List swiperDataList = <MyBanner>[];
  List homeShopBeans = <HomeShopBean>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBannerData();
    getShopData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 44),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Text('商店', style: TextStyle(fontSize: 27)))
                ],
              ),
              margin: EdgeInsets.only(left: 22.5, right: 22.5),
            ),
            SizedBox(
              height: 12.5,
            ),
            addressAndSearch(), //位置 搜索 扫码
            fivePoint(),
            Container(
                child: firstBanner(swiperDataList),
                margin: EdgeInsets.only(top: 26, bottom: 25)),
            listView()
          ],
        ),
      ),
    );
  }

  //位置 搜索  扫码
  Widget addressAndSearch() {
    return Container(
      height: 36,
      padding: EdgeInsets.only(right: 10, left: 10),
      decoration: BoxDecoration(
          color: Color(0xffF7F7F7), borderRadius: BorderRadius.circular(18)),
      margin: EdgeInsets.only(left: 22.5, right: 22.5),
      child: Row(
        children: [
          InkWell(
              child: Text(address, style: TextStyle(fontSize: 14)),
              onTap: () {
                showAddressPick();
              }),
          Icon(Icons.arrow_drop_down),
          SizedBox(width: 15),
          Container(color: Color(0xffEAEAEA), width: 1, height: 16),
          SizedBox(width: 15),
          SizedBox(child: Image.asset("assets/images/search.png"), width: 16.5),
          SizedBox(width: 7.5),
          Expanded(
            child: InkWell(
                child: Text("搜索您的美好生活",
                    style: TextStyle(color: Color(0xffBCBCBC), fontSize: 14)),
                onTap: () {}),
          ),
          SizedBox(child: Image.asset("assets/images/scan.png"), width: 16.5),
        ],
      ),
    );
  }

  // 关注 动态 广播 问答 视频
  //todo 点击事件
  Widget fivePoint() {
    return Container(
      margin: EdgeInsets.only(top: 28, right: 22.5, left: 22.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/s_takeout.png", "外卖"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/s_specialoffer.png", "特价"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/s_market.png", "集市"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/s_note.png", "笔记"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/video.png", "视频"),
          )
        ],
      ),
    );
  }

//轮播图
  Widget firstBanner(List<MyBanner> swiperDataLists) {
    List swiperDataList = swiperDataLists;

    return Container(
        margin: EdgeInsets.only(left: 22.5, right: 22.5),
        child: ConstrainedBox(
          child: Swiper(
            outer: false,
            itemBuilder: (c, i) {
              if (swiperDataList != null) {
                return CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: "${swiperDataList[i].img}",
                  placeholder: (context, url) =>
                      new CircularProgressIndicator(),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                );
              } else {
                return Container();
              }
            },
            pagination: new SwiperPagination(margin: new EdgeInsets.all(5.0)),
            itemCount: swiperDataList == null ? 0 : swiperDataList.length,
          ),
          constraints: new BoxConstraints.loose(
              new Size(MediaQuery.of(context).size.width, 320.0)),
        ));
  }

  Widget fivePointItem(String path, String name) {
    return Column(
      children: [
        SizedBox(child: Image.asset(path), height: 30, width: 20),
        Text(
          name,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }

//显示城市选择
  void showAddressPick() async {
    Result result = await CityPickers.showCityPicker(
      context: context,
    );
    print(result.toString());
    setState(() {
      address = result.cityName + "·" + result.areaName;
    });
  }

  void getBannerData() {
    //  http://www.bjxmqy.com:9501/news/wap_floor1_banner
    NetUtil.post("http://www.bjxmqy.com:9501/news/wap_floor1_banner", {},
        (result) {
      BannerList bannerList = BannerList.fromJson(result.data);
      setState(() {
        swiperDataList = bannerList.banners;
        print(swiperDataList.length);
      });
    }, (error) {
      print("出错了");
      print(error);
    });
  }

  Widget listView() {
    return Container(
      child: ListView.builder(
        itemBuilder: listViewItem,
        physics: new NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        //马勒戈壁的非常重要
        itemCount: homeShopBeans.length,
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {}

  void getShopData() {
    NetUtil.post(NetUrls.goods_list, {"city": "重庆"}, (result) {
      Map<String, dynamic> maps = result.data["goodsCat"];

      maps.forEach((key, value) {
        homeShopBeans.add(value);
      });
      
    }, (error) {
      print("出错了");
      print(error);
    });
  }
}
