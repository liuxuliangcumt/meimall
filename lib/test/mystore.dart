import 'package:flutter/cupertino.dart';

class stores {
  // body
  Widget baseView() {
    LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Container(
                child: Column(
                  children: [],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
