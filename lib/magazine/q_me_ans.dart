import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

class MyAnswer extends StatefulWidget {
  @override
  _MyAnswerState createState() => _MyAnswerState();
}

class _MyAnswerState extends State<MyAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "发布",
                style: TextStyle(fontSize: 14, color: Constants.mainColor),
              ),
            ),
            onTap: () {},
          ),
          SizedBox(width: 10),
          Icon(const IconData(0xe622, fontFamily: "ali")),
          SizedBox(width: 15),
        ],
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 22.5, left: 22.5, right: 22.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('公务员买宝马3系过分吗？', style: TextStyle(fontSize: 18)),
                      Container(
                        height: 1,
                        color: Color(0xffF1F1F1),
                        margin: EdgeInsets.only(top: 22, bottom: 22),
                      ),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: "详细描述你的知识、经验或见解吧~",
                            border: InputBorder.none),
                      )),
                      Container(height: 0.5, color: Colors.grey),
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
              const IconData(0xe92e, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe681, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe60a, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              const IconData(0xe629, fontFamily: "ali"),
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
              const IconData(0xe618, fontFamily: "ali"),
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
