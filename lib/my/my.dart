import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static const images = [
    "https://p3.dcarimg.com/img/tos-cn-i-dcdx/699111bff264481c8085fb031a0c61a1~1270x0.webp",
    "https://p3.dcarimg.com/img/motor-img/fc1d994542795d2aa8627edad3f24173~624x0.webp",
    "https://p3.dcarimg.com/img/tos-cn-i-dcdx/38da82273e804bca94dcc6a86f98a6ea~624x0.webp",
    "https://p3.dcarimg.com/img/motor-img/70ddd4e51ce0710b051b7fd8a8a6a961~624x0.webp",
    "https://p3.dcarimg.com/img/motor-img/2c3c978c7a0d6f07877d20ca14ed6855~1270x0.image",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            images[index],
            fit: BoxFit.fitWidth,
          );
        },
        itemWidth: 400,
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: images.length,
        scale: 0.6,
        pagination: SwiperPagination(
          margin: EdgeInsets.all(100),
          builder: RectSwiperPaginationBuilder(
              activeColor: Colors.deepOrange,
              color: Colors.grey,
              size: Size(5, 2),
              activeSize: Size(10, 2),
              space: 3),
        ),
      ),
    );
  }
}
