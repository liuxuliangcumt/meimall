import 'package:flutter/material.dart';

//扫码
class RecoverScan extends StatefulWidget {
  @override
  _RecoverScanState createState() => _RecoverScanState();
}

class _RecoverScanState extends State<RecoverScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /* actions: <Widget>[
          InkWell(
            child: Image.asset("assets/images/rec_h_loca.png", width: 20),
          ),
          SizedBox(width: 20)
        ],*/
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
          return DefaultTabController(
              length: 2,
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Text('text'),
                            ),
                          ),
                          Container(
                            height: 65,
                            color: Colors.black,
                            child: TabBar(
                              tabs: [Text('扫码投递'), Text('二维码投递')],
                              labelStyle: TextStyle(
                                  color: Color(0xff9C9C9C), fontSize: 15),
                              unselectedLabelStyle:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
