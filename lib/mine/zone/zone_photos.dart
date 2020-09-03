import 'package:flutter/material.dart';
import 'package:meimall/constant/Constants.dart';

//相册
class ZonePhotos extends StatefulWidget {
  @override
  _ZonePhotosState createState() => _ZonePhotosState();
}

class _ZonePhotosState extends State<ZonePhotos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('相册'),
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: _buildBodyWidget(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("你踩到我了");
          }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: bottomNavItems,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          _controller.jumpToPage(index);
        },
      ),
    );
  }

  int currentIndex = 0;

  PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      activeIcon: SizedBox(
        child: Image.asset(
          "assets/images/z_carmera_s.png",
        ),
        height: 20,
        width: 20,
      ),
      icon: SizedBox(
        child: Image.asset(
          "assets/images/z_carmera_u.png",
        ),
        height: 20,
        width: 20,
      ),
      title: Text("相册"),
    ),
    BottomNavigationBarItem(
      activeIcon: SizedBox(
        child: Image.asset(
          "assets/images/z_pic_s.png",
        ),
        height: 20,
        width: 20,
      ),
      icon: SizedBox(
        child: Image.asset(
          "assets/images/z_pic_u.png",
        ),
        height: 20,
        width: 20,
      ),
      title: Text("照片"),
    ),
    BottomNavigationBarItem(
      activeIcon: SizedBox(
        child: Image.asset(
          "assets/images/z_video_s.png",
        ),
        height: 20,
        width: 20,
      ),
      icon: SizedBox(
        child: Image.asset(
          "assets/images/z_video_u.png",
        ),
        height: 20,
        width: 20,
      ),
      title: Text("视频"),
    ),
    BottomNavigationBarItem(
      activeIcon: SizedBox(
        child: Image.asset(
          "assets/images/z_loca_s.png",
        ),
        height: 20,
        width: 20,
      ),
      icon: SizedBox(
        child: Image.asset(
          "assets/images/z_loca_u.png",
        ),
        height: 20,
        width: 20,
      ),
      title: Text("本地照片"),
    ),
  ];
  final pages = [
    Text("相册"),
    Text("照片"),
    Text("视频"),
    Text("本地照片"),
  ];

  Widget _buildBodyWidget() {
    return PageView.builder(
      controller: _controller,
      itemCount: pages.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return pages[index];
      },
      onPageChanged: (index) {
        if (index != _controller) {
          setState(() {
            currentIndex = index;
          });
        }
      },
    );
  }
}
