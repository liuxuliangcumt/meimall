import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

//发布问题
class PublicQuestion2 extends StatefulWidget {
  @override
  _PublicQuestion2State createState() => _PublicQuestion2State();
}

class _PublicQuestion2State extends State<PublicQuestion2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text(
              '发布',
              style: TextStyle(color: Constants.mainColor),
            ),
          )
        ],
        centerTitle: true,
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
                  color: Colors.white,
                  padding: EdgeInsets.all(22.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: "输入问题并以问号结尾", border: InputBorder.none),
                      ),
                      Container(
                        color: Color(0xffF7F7F7),
                        padding: EdgeInsets.only(
                            top: 20, bottom: 20, left: 16, right: 16),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(child: Text('让你的第一个提问获得更多解答')),
                                Icon(Icons.close)
                              ],
                            ),
                            Text(
                                '●保持文字简练，表述清晰问题的关键点\n●添加合适的话题，让问题更好的流通\n●确保问题没有被提问过'),
                          ],
                        ),
                      ),
                      TextField(
                        minLines: 11,
                        maxLines: 50,
                        decoration: InputDecoration(
                          hintText: "对问题补充说明，可以更快获得解答（选填）",
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 130,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffF7F7F7),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          '+ 话题 (至少一个)',
                          style: TextStyle(color: Constants.mainColor),
                        ),
                      ),
                      Expanded(child: Container()),
                      bottomViews(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget bottomViews() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
              IconData(0xe60a, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe629, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              IconData(0xe618, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
