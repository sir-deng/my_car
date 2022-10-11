import 'package:flutter/material.dart';

import 'HomeRecommend.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: _tabController,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
          indicatorWeight: 3,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
          tabs: [
            Tab(
              text: "视频",
            ),
            Tab(
              text: "推荐",
            ),
            Tab(
              text: "新能源",
            ),
          ],
        ),
        actions: [
          OutlinedButton(
            style: ButtonStyle(),
            onPressed: () {},
            child: Text(
              "大众",
              style:
                  TextStyle(backgroundColor: Colors.white, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: TabBarView(controller: _tabController, children: [
        HomeRecommend(),
        Container(child: Center(child: Text("推荐"))),
        Container(child: Center(child: Text("新能源"))),
      ]),
    ));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
