import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:readexcel/CarFriendCircle/CarFriendCirclePage.dart';
import 'package:readexcel/SelectCar/SelectCarPage.dart';
import 'package:readexcel/UsedCar/UsedCarPage.dart';
import 'package:readexcel/homepage/HomePage.dart';
import 'package:readexcel/my/my.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  var index = 0;
  late AnimationController _animatedContainer;
  late AnimationController _animatedContainer2;
  late AnimationController _animatedContainer3;
  late AnimationController _animatedContainer4;
  late AnimationController _animatedContainer5;
  List<Widget> page = [
    HomePage(),
    CarFriendCirclePage(),
    SelectCarPage(),
    UsedCarPage(),
    MyPage()
  ];

  @override
  void initState() {
    _animatedContainer =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animatedContainer2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animatedContainer3 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animatedContainer4 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animatedContainer5 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: page[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedLabelStyle: TextStyle(fontSize: 12, color: Colors.black),
          unselectedLabelStyle: TextStyle(fontSize: 12, color: Colors.black),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              switch (index) {
                case 0:
                  _animatedContainer.forward();
                  _animatedContainer2.reverse();
                  _animatedContainer3.reverse();
                  _animatedContainer4.reverse();
                  _animatedContainer5.reverse();
                  break;
                case 1:
                  _animatedContainer2.forward();
                  _animatedContainer.reverse();
                  _animatedContainer3.reverse();
                  _animatedContainer4.reverse();
                  _animatedContainer5.reverse();
                  break;
                case 2:
                  _animatedContainer3.forward();
                  _animatedContainer.reverse();
                  _animatedContainer2.reverse();
                  _animatedContainer4.reverse();
                  _animatedContainer5.reverse();
                  break;
                case 3:
                  _animatedContainer4.forward();
                  _animatedContainer.reverse();
                  _animatedContainer2.reverse();
                  _animatedContainer3.reverse();
                  _animatedContainer5.reverse();
                  break;
                case 4:
                  _animatedContainer5.forward();
                  _animatedContainer4.reverse();
                  _animatedContainer3.reverse();
                  _animatedContainer2.reverse();
                  _animatedContainer.reverse();
                  break;
              }
              this.index = index;

            });
          },

          // selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
              icon: Lottie.asset(
                "assets/home-logo.json",
                repeat: false,
                animate: true,
                height: 30,
                controller: _animatedContainer,
              ),
              activeIcon: Lottie.asset(
                "assets/home.json",
                reverse: true,
                animate: true,
                repeat: false,
                height: 30,
              ),
              label: "首页",
            ),
            BottomNavigationBarItem(
                icon: Lottie.asset(
                  "assets/cheyou.json",
                  height: 30,
                  animate: true,
                  repeat: false,
                  controller: _animatedContainer2,
                ),
                label: "车友圈"),
            BottomNavigationBarItem(
                icon: Lottie.asset(
                  "assets/buy.json",
                  height: 30,
                  repeat: false,
                  reverse: true,
                  controller: _animatedContainer3,
                ),
                label: "选车"),
            BottomNavigationBarItem(
                icon: Lottie.asset(
                  "assets/ershouche.json",
                  height: 30,
                  repeat: false,
                  reverse: true,
                  controller: _animatedContainer4,
                ),
                label: "二手车"),
            BottomNavigationBarItem(
              icon: Lottie.asset(
                "assets/mine.json",
                height: 30,
                repeat: false,
                reverse: true,
                controller: _animatedContainer5,
              ),
              label: "我的",
            )
          ],
        ),
      ),
    );
  }
}
