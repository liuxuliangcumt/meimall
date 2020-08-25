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
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Container(
                child: Column(
                  children: [],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
