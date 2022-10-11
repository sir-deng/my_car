import 'package:flutter/material.dart';

class CarFriendCirclePage extends StatefulWidget {
  const CarFriendCirclePage({Key? key}) : super(key: key);

  @override
  State<CarFriendCirclePage> createState() => _CarFriendCirclePageState();
}

class _CarFriendCirclePageState extends State<CarFriendCirclePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text("车友圈"),
      ),
    );
  }
}
