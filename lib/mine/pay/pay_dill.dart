import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//账单
class PayDill extends StatefulWidget {
  @override
  _PayDillState createState() => _PayDillState();
}

class _PayDillState extends State<PayDill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账单'),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [Icon(Icons.list)],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 22, top: 17, bottom: 17),
                      child: Row(
                        children: [
                          Text('全部交易类型'),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Color(0xffF7F7F7),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 12,
                            left: 22,
                            child: Container(
                              width: 104,
                              height: 26,
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13)),
                              child: Row(
                                children: [
                                  Text('2020年5月'),
                                  Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffD0D0D0),
                              size: 13,
                            ),
                            right: 20,
                            top: 20,
                          ),
                          Positioned(
                              child: Text(
                                '支出￥52.5\n收入￥752.5',
                                style: TextStyle(color: Color(0xff777777)),
                              ),
                              top: 5,
                              right: 35)
                        ],
                      ),
                    ),
                    Container(
                      child: ListView.builder(
                        itemBuilder: listViewItem,
                        itemCount: 15,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget listViewItem(BuildContext context, int index) {
    return Container(
      height: 80,
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: ListTile(
        title: Text('零钱提现-微信'),
        subtitle: Text('05-04  20:00'),
        leading: CachedNetworkImage(
          width: 40,
          height: 40,
          imageUrl: "http://www.meichengmall.com/static/img/card.62a2c2b3.png",
        ),
        trailing: Text(
          '-15.00',
          style: TextStyle(color: Colors.black, fontSize: 19),
        ),
      ),
    );
  }
}
