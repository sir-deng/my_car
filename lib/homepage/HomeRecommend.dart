import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeRecommend extends StatefulWidget {
  const HomeRecommend({Key? key}) : super(key: key);

  @override
  State<HomeRecommend> createState() => _HomeRecommendState();
}

class _HomeRecommendState extends State<HomeRecommend> {
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
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text("搜索"),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 220,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    images[index],
                  );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                itemCount: images.length,
                pagination: SwiperPagination(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 80,
              child: PageView(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("车型大全"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("排行榜"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("特惠购新车"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("新能源"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("查二手车"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("车型大全"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("排行榜"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("特惠购新车"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("新能源"),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              children: [
                                Placeholder(
                                  fallbackWidth: 40,
                                  fallbackHeight: 40,
                                ),
                                Text("查二手车"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                physics: BouncingScrollPhysics(),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: HomeSliverPersistentHeaderDelegate(),
            pinned: true,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.photo_camera,
                          ),
                        ),
                        title: Text("五菱宏光"),
                        subtitle: Text("北京车主 曹阿蛮"),
                        trailing: Icon(Icons.highlight_remove),
                      ),
                      Text(
                        "前几天买了个新车,然后就跑到了沙漠,"
                        "然后就没有了大水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Text("图片");
                        },
                        itemCount: 3,
                      ),
                      Divider(),
                    ],
                  ),
                );
              },
              childCount: 50,
            ),
          )
        ],
      ),
    );
  }
}

class HomeSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final double _minExtent = 50;
  final double _maxExtent = 50;
  static const data = [
    "哈弗H6",
    "雅阁",
    "奥迪A6L",
    "宝马X5",
    "保时捷718",
    "路虎揽胜",
    "理想one",
    "小鹏p7",
    "蔚来",
    "问界M7",
    "展开"
  ];

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xfff6f9fb),
      child: Stack(children: [
        ListView.separated(
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              icon: Icon(
                Icons.car_crash,
                color: Colors.blue,
              ),
              label: Text(
                data[index],
                style: TextStyle(color: Color(0xff212121)),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 10,
            );
          },
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Color(0xfff6f9fb)),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff212121),
              ),
              label: Text(
                "展开",
                style: TextStyle(color: Color(0xff212121)),
              )),
        )
      ]),
    );
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
