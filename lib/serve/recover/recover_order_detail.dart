import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';
//订单详情

class RecoverOrderDetail extends StatefulWidget {
  @override
  _RecoverOrderDetailState createState() => _RecoverOrderDetailState();
}

class _RecoverOrderDetailState extends State<RecoverOrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          height: 180,
          imageUrl:
              "http://www.meichengmall.com/wap/static/img/dd.d215e14f.jpg",
        ),
        Scaffold(
          backgroundColor: Color(0x00ffffff),
          appBar: AppBar(
            backgroundColor: Color(0x00ffffff),
            elevation: 0,
            centerTitle: true,
            title: Text('订单详情'),
            leading: InkWell(
              child: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              '等待取件',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            padding: EdgeInsets.only(left: 40, top: 20),
                            height: 100,
                          ),
                          Container(
                            height: 92,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 22, right: 22),
                            color: Colors.white,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    width: 30,
                                    height: 30,
                                    imageUrl:
                                        "http://www.meichengmall.com/wap/static/img/dd.d215e14f.jpg",
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text('默默大师'),
                                          SizedBox(width: 10),
                                          Text(
                                            '86-15456985987',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        '江苏省苏州市高新区金山路金色家园南组团9栋505室',
                                        maxLines: 2,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            color: Color(0xfff1f1f1),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 22, right: 22),
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 45),
                                Text(
                                  '商品信息',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text(
                                      '类      型\n规      格\n预约保证金\n预约时间\n备注信息',
                                      strutStyle: StrutStyle(height: 2),
                                      style:
                                          TextStyle(color: Color(0xff777777)),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      '台式电脑\n台式主机\n￥100 环保金\n2020-02-20 19:00:00\n无 ',
                                      strutStyle: StrutStyle(height: 2),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget imageListViewItem(BuildContext context, int index) {
    return Container(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        width: 30,
        height: 30,
        imageUrl: "http://www.meichengmall.com/wap/static/img/dd.d215e14f.jpg",
      ),
    );
  }
}
