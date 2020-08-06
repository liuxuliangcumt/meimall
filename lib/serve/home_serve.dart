import 'package:cached_network_image/cached_network_image.dart';
import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:meimall/beans/banners.dart';
import 'package:meimall/netUtil/NetUtil.dart';

class HomeServe extends StatefulWidget {
  @override
  _HomeServeState createState() => _HomeServeState();
}

class _HomeServeState extends State<HomeServe>
    with AutomaticKeepAliveClientMixin {
  @protected
  bool get wantKeepAlive => true;
  String address = "苏州·高新区";
  List swiperDataList = <MyBanner>[];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SingleChildScrollView(
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
                    Expanded(child: Text('服务', style: TextStyle(fontSize: 27))),
                    Icon(
                      Icons.camera_enhance,
                      color: Colors.grey,
                    )
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
              tabBars(),
              serverListView(),
            ],
          ),
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
            child: fivePointItem("assets/images/f_car.png", "出行"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/f_deliver.png", "闪送"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/f_recycle.png", "回收"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/f_charge.png", "充电"),
          ),
          InkWell(
            onTap: () {},
            child: fivePointItem("assets/images/f_call.png", "一呼"),
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

  Widget tabBars() {
    return Container(
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.only(top: 5),
        labelPadding: EdgeInsets.only(top: 5, bottom: 5),
        unselectedLabelStyle: TextStyle(fontSize: 17, color: Colors.grey),
        labelStyle: TextStyle(fontSize: 18),
        tabs: <Widget>[
          Text("招聘"),
          Text("房产"),
          Text("汽车"),
          Text("二手"),
          Text("宠物"),
        ],
      ),
    );
  }

  Widget serverListView() {
    return Container(
        margin: EdgeInsets.only(left: 22.5, right: 22.5),
        child: ListView.builder(
          shrinkWrap: true,
          physics: new NeverScrollableScrollPhysics(),
          itemBuilder: listViewItem,
          itemCount: 2,
        ));
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      child: Column(
        children: [
          Container(
            child: InkWell(
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "房产",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  )),
                  Text(
                    '查看全部',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              onTap: () {},
            ),
            padding: EdgeInsets.only(top: 20, bottom: 20),
          ),
          CachedNetworkImage(
            imageUrl:
                "http://www.meichengmall.com/static/img/u=1617103996,2974598959&fm=26&gp=0.b779508a.jpg",
            fit: BoxFit.cover,
            height: 200,
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:
                      "http://www.meichengmall.com/static/img/u=1617103996,2974598959&fm=26&gp=0.b779508a.jpg",
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
                      SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          Icon(Icons.remove_red_eye, color: Colors.grey,size: 13),
                          Text('1100')
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.watch_later, color: Colors.grey,size: 13 ),
                          Text('11-11 12:00')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl:
                  "http://www.meichengmall.com/static/img/u=1617103996,2974598959&fm=26&gp=0.b779508a.jpg",
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
                      SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          Icon(Icons.remove_red_eye, color: Colors.grey,size: 13),
                          Text('1100')
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.watch_later, color: Colors.grey,size: 13 ),
                          Text('11-11 12:00')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
