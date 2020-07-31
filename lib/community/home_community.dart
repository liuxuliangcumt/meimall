import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCommunity extends StatefulWidget {
  @override
  _HomeCommunityState createState() => _HomeCommunityState();
}

class _HomeCommunityState extends State<HomeCommunity>
    with AutomaticKeepAliveClientMixin {
  @protected
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 50, left: 22.5, right: 22.5),
        child: Column(
          children: [
            topBar(),
            fivePoint(),
            listView(),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "社区",
          style: TextStyle(
            fontSize: 27,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 2),
            child: Text(
              "苏州市",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
        Image.asset("assets/images/search.png", width: 18),
        SizedBox(width: 20),
        Image.asset("assets/images/camera.png", width: 20)
      ],
    );
  }

  // 关注 动态 广播 问答 视频
  //todo 点击事件
  Widget fivePoint() {
    return Container(
      margin: EdgeInsets.only(top: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
              onTap: () {},
              child: fivePointItem("assets/images/c_chat.png", "聊天")),
          InkWell(
              onTap: () {},
              child: fivePointItem("assets/images/c_friend.png", "交友")),
          InkWell(
              onTap: () {},
              child: fivePointItem("assets/images/c_circle.png", "圈子")),
          InkWell(
              onTap: () {},
              child: fivePointItem("assets/images/video.png", "视频")),
          InkWell(
              onTap: () {},
              child: fivePointItem("assets/images/c_qchat.png", "快聊")),
        ],
      ),
    );
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

  Widget listView() {
    return Container(
      child: ListView.builder(
        itemCount: 7,
        physics: new NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: listViewItem,
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          Row(
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
              Expanded(child: Text("正龙", style: TextStyle(fontSize: 16))),
              MaterialButton(
                child: Text("关注", style: TextStyle(color: Color(0xffC3AB87))),
                minWidth: 80,
                height: 32,
                color: Color(0x22C3AB87),
                elevation: 0,
                shape: StadiumBorder(),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("记录不一样的元宵节\n记录不一样的元宵节"),
          SizedBox(
            height: 13,
          ),
          CachedNetworkImage(
            imageUrl:
                "http://www.meichengmall.com/static/img/u=2525721197,2106052897&fm=214&gp=0.2a94c484.jpg",
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: Text("18分钟前",
                      style: TextStyle(color: Color(0xffA1A4AF)))),
              Image.asset("assets/images/me_message.png", width: 15),
              SizedBox(
                width: 40,
              ),
              Image.asset("assets/images/good.png", width: 15),
              SizedBox(width: 10),
              Text('4',
                  style: TextStyle(fontSize: 13, color: Color(0xffA1A4AF))),
            ],
          ),
          Container(
            height: 0.5,
            margin: EdgeInsets.only(top: 34),
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
