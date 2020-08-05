import 'package:flutter/material.dart';

//  在child控件的 上下左右添加控件  padding 为child的margin
class EasyAround extends StatelessWidget {
  Widget top;
  Widget left;
  Widget right;
  Widget bottom;
  Widget child;
  EdgeInsetsGeometry padding;
  MainAxisAlignment mainAxisAlignment;

  CrossAxisAlignment crossAxisAlignment;

  EasyAround(
      {this.top,
      this.padding,
      this.left,
      this.right,
      this.bottom,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.mainAxisAlignment = MainAxisAlignment.center,
      @required this.child});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          top == null ? Container(height: 0) : top,
          Row(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: [
              left == null ? Container(width: 0) : left,
              getChild(),
              right == null ? Container(width: 0) : right
            ],
          ),
          bottom == null ? Container(height: 0) : bottom,
        ],
      ),
    );
  }

  Widget getChild() {
    return Container(
      child: child,
      padding: padding,
    );
  }
}
