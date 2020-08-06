import 'package:flutter/material.dart';
import 'package:meimall/customview/easyaround.dart';
import 'package:meimall/magazine/publicbehaviour.dart';
// 通用view 多处使用到的控件

// 1 、点击相机弹出的 popupwindow
class CommonPopupWindowButton extends StatefulWidget {
  @override
  _CommonPopupWindowButtonState createState() =>
      _CommonPopupWindowButtonState();
}

class _CommonPopupWindowButtonState extends State<CommonPopupWindowButton> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            cardColor: Colors.black,
            textTheme: TextTheme(
                headline1: TextStyle(color: Colors.white, fontSize: 14))),
        child: PopupMenuButton(
          captureInheritedThemes: false,
          offset: Offset.fromDirection(1.0, 60),
          icon: Image.asset("assets/images/camera.png", width: 25),
          itemBuilder: (BuildContext context) {
            return <PopupMenuItem<int>>[
              PopupMenuItem<int>(
                child: EasyAround(
                  child: Text('文章'),
                  padding: EdgeInsets.only(left: 20),
                  left: Image.asset("assets/images/popu_article.png",
                      width: 20, height: 20),
                ),
                value: 1,
              ),
              PopupMenuItem<int>(
                child: EasyAround(
                  child: Text('动态'),
                  padding: EdgeInsets.only(left: 20),
                  left: Image.asset("assets/images/popu_fly.png",
                      width: 20, height: 20),
                ),
                value: 2,
              ),
              PopupMenuItem<int>(
                child: EasyAround(
                  child: Text('问答'),
                  padding: EdgeInsets.only(left: 20),
                  left: Image.asset("assets/images/popu_ask.png",
                      width: 20, height: 20),
                ),
                value: 3,
              ),
              PopupMenuItem<int>(
                child: EasyAround(
                  child: Text('视频'),
                  padding: EdgeInsets.only(left: 20),
                  left: Image.asset("assets/images/popu_video.png",
                      width: 20, height: 20),
                ),
                value: 4,
              ),
              PopupMenuItem<int>(
                child: EasyAround(
                  child: Text('直播'),
                  padding: EdgeInsets.only(left: 20),
                  left: Image.asset("assets/images/popu_live.png",
                      width: 20, height: 20),
                ),
                value: 5,
              ),
            ];
          },
          onSelected: (int index) {
            switch (index) {
              case 1:
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PublicBehaviour()));
                break;
              case 3:
                break;
              case 4:
                break;
              case 5:
                break;
              default:
                break;
            }
          },
        ));
  }
}
