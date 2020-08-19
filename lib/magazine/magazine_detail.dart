import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//杂志详情
class MagazineDetail extends StatefulWidget {
  @override
  _MagazineDetailState createState() => _MagazineDetailState();
}

class _MagazineDetailState extends State<MagazineDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                "http://www.meichengmall.com/static/img/933b4079103743d094261ae6ca733fa4_th.8252b817.jpg",
          ),
          AppBar(
            backgroundColor: Color(0x00ffffff),
            leading: InkWell(
              child: Icon(Icons.arrow_back_ios, color: Colors.white),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              Icon(Icons.camera_enhance, color: Colors.white),
              SizedBox(width: 22)
            ],
          ),
        ],
      ),
    );
  }
}
