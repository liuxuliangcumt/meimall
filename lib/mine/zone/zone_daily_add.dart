import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

//发布日志
class ZoneDailyAdd extends StatefulWidget {
  @override
  _ZoneDailyAddState createState() => _ZoneDailyAddState();
}

class _ZoneDailyAddState extends State<ZoneDailyAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('写日志'),
        elevation: 0,
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text('发表',
                style: TextStyle(fontSize: 13, color: Constants.mainColor)),
          ),
          SizedBox(width: 20)
        ],
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 56,
        padding: EdgeInsets.only(top: 10, left: 22.5, right: 22.5),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 44,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "日志标题",
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: 21),
                maxLines: 1,
              ),
            ),
            Positioned(
              child: bottomViews(),
              bottom: 0,
            ),
            Positioned(
              top: 50,
              child: Container(
                width: MediaQuery.of(context).size.width - 44,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "输入正文...",
                    border: InputBorder.none,
                  ),
                  minLines: 6,
                  maxLines: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomViews() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 44,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe688, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe92e, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe681, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),



          InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe60f, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe612, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),


        ],
      ),
    );
  }
}
