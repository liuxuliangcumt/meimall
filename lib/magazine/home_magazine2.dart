import 'package:cached_network_image/cached_network_image.dart';
import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';
import 'package:meimall/customview/easyaround.dart';

//修改后杂志
class HomeMagazine2 extends StatefulWidget {
  @override
  _HomeMagazine2State createState() => _HomeMagazine2State();
}

class _HomeMagazine2State extends State<HomeMagazine2> {
  List funcData = [
    {"img": "assets/images/h_1.png", "name": "杂志"},
    {"img": "assets/images/c_chat.png", "name": "聊天"},
    {"img": "assets/images/h_4.png", "name": "交友"},
    {"img": "assets/images/look.png", "name": "问答"},
    {"img": "assets/images/video.png", "name": "视频"},
    {"img": "assets/images/look.png", "name": "外面"},
    {"img": "assets/images/h_1.png", "name": "美食"},
    {"img": "assets/images/h_1.png", "name": "特价"},
    {"img": "assets/images/h_1.png", "name": "团购"},
    {"img": "assets/images/h_1.png", "name": "集市"},
    {"img": "assets/images/h_1.png", "name": "闪送"},
    {"img": "assets/images/h_1.png", "name": "充电"},
    {"img": "assets/images/h_1.png", "name": "招聘"},
    {"img": "assets/images/h_1.png", "name": "房产"},
    {"img": "assets/images/h_1.png", "name": "更多"},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("长度 ");
    print(funcData.length);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DefaultTabController(
        length: 5,
        child: Stack(
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xffDFDFDF), Colors.white],
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: 44),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  addressAndSearch(), //位置 搜索 扫码
                  fourButton(), //扫付 出 回收
                  functions(),
                  Container(
                    height: 110,
                    margin: EdgeInsets.only(left: 22, right: 22, top: 12),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      height: 110,
                      width: MediaQuery.of(context).size.width - 44,
                      imageUrl:
                          "http://www.meichengmall.com/wap/static/img/b1.2547b2ab.png",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 22, right: 22, top: 25, bottom: 20),
                    child: TabBar(
                      tabs: [
                        Text('资讯'),
                        Text('营销'),
                        Text('通证'),
                        Text('服务'),
                        Text('应用'),
                      ],
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Constants.mainColor,
                      unselectedLabelStyle:
                          TextStyle(fontSize: 16, color: Color(0xffB5B5B5)),
                      labelStyle:
                          TextStyle(fontSize: 17, color: Color(0xff020202)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 22, right: 22),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 15,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.8),
                        itemBuilder: girdViewItemMain),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

    return Stack(
      children: [
        Container(
          height: 280,
          decoration: BoxDecoration(color: Colors.amberAccent),
        ),
      ],
    );
  }

  Widget addressAndSearch() {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Row(
        children: [
          InkWell(
              child: Column(
                children: [
                  Text(cityName, style: TextStyle(fontSize: 18)),
                  Text(areaName, style: TextStyle(fontSize: 14)),
                ],
              ),
              onTap: () {
                showAddressPick();
              }),
          Icon(Icons.arrow_drop_down),
          SizedBox(width: 15),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 36,
              decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(18)),
              child: Row(
                children: [
                  SizedBox(
                      child: Image.asset("assets/images/search.png"),
                      width: 16.5),
                  SizedBox(width: 7.5),
                  InkWell(
                      child: Text("搜索您的美好生活",
                          style: TextStyle(
                              color: Color(0xffBCBCBC), fontSize: 14)),
                      onTap: () {}),
                ],
              ),
            ),
          ),
          SizedBox(width: 12),
          SizedBox(child: Icon(Icons.add), width: 16.5),
        ],
      ),
    );
  }

  String cityName = "苏州";
  String areaName = "高新区";

//显示城市选择
  void showAddressPick() async {
    Result result = await CityPickers.showCityPicker(
      context: context,
    );
    print(result.toString());
    setState(() {
      cityName = result.cityName;
      areaName = result.areaName;
    });
    // type 2
    /*  Result result2 = await CityPickers.showFullPageCityPicker(
      context: context,
    );*/
  }

  Widget fourButton() {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          EasyAround(
            top: Image.asset("assets/images/home_scan.png", width: 26),
            child: Text(
              '扫一扫',
              style: TextStyle(fontSize: 12),
            ),
          ),
          EasyAround(
            top: Image.asset("assets/images/home_qr.png", width: 26),
            child: Text(
              '付款',
              style: TextStyle(fontSize: 12),
            ),
          ),
          EasyAround(
            top: Image.asset("assets/images/home_tra.png", width: 26),
            child: Text(
              '出行',
              style: TextStyle(fontSize: 12),
            ),
          ),
          EasyAround(
            top: Image.asset("assets/images/home_rec.png", width: 26),
            child: Text(
              '回收',
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }

//
  Widget functions() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.purpleAccent, borderRadius: BorderRadius.circular(10)),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: funcData.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: girdViewItem),
    );
  }

  Widget girdViewItem(BuildContext context, int index) {
    return Container(
      child: EasyAround(
        child: Text(" name$index"),
        top: Image.asset("", width: 20),
      ),
      color: Colors.cyan,
    );
  }

  Widget girdViewItemMain(BuildContext context, int index) {
    return Container(
      child: Column(
        children: [
          CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl:
                "http://www.meichengmall.com/wap/static/img/b2.4b82763c.png",
          ),
          Text(
            '颜值爆表的渐变色蕾丝蛋卷一个鸡蛋做一堆',
            maxLines: 2,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
