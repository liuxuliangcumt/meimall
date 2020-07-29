import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Magazine extends StatefulWidget {
  @override
  _MagazineState createState() => _MagazineState();
}

class _MagazineState extends State<Magazine> {
  List listData = [];
@override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios, color: Colors.black),
            elevation: 0,
            actions: [
              Image.asset(
                "assets/images/camera.png",
                width: 20,
              ),
              SizedBox(
                width: 22,
              )
            ],
            title: Text(
              "美食",
              style: TextStyle(color: Colors.black, fontSize: 21),
            ),
            centerTitle: false,
            backgroundColor: Colors.white,
          ),
          body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    addressAndSearch(),
                    Container(
                      child: TabBar(
                        tabs: [
                          Text("资讯"),
                          Text("聚焦"),
                          Text("寻味"),
                          Text("人物"),
                          Text("专访"),
                        ],
                        labelStyle: TextStyle(fontSize: 18),
                        unselectedLabelStyle: TextStyle(fontSize: 18),
                        indicatorPadding: EdgeInsets.only(top: 10),
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Color(0xffC3AB87),
                      ),
                       padding: EdgeInsets.only(top: 25, bottom: 30,left: 22,right: 22),
                    ),
                    girdView(),
                  ],
                ),
              ),
              color: Colors.white),
        ));
  }

  Widget addressAndSearch() {
    return Container(
      height: 36,
      padding: EdgeInsets.only(right: 10, left: 10),
      decoration: BoxDecoration(
          color: Color(0xffF7F7F7), borderRadius: BorderRadius.circular(18)),
      margin: EdgeInsets.only(left: 22.5, right: 22.5),
      child: Row(
        children: [
          SizedBox(child: Image.asset("assets/images/search.png"), width: 16.5),
          SizedBox(width: 7.5),
          Expanded(
            child: InkWell(
                child: Text("搜索您的美好生活",
                    style: TextStyle(color: Color(0xffBCBCBC), fontSize: 14)),
                onTap: () {}),
          ),
        ],
      ),
    );
  }

  Widget girdView() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //横轴元素个数
          crossAxisCount: 2,
          //纵轴间距
          mainAxisSpacing: 20.0,
          //横轴间距
          crossAxisSpacing: 10.0,
          //子组件宽高长度比例
          childAspectRatio: 1.0),
      itemBuilder: gridViewItem,
      itemCount: listData.length,
    );
  }
  Widget gridViewItem(BuildContext context, int index) {
    return Container(
      child: Text("dsf"),
    );
  }


}
