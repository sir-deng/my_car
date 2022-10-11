import 'package:flutter/material.dart';

class SelectCarPage extends StatefulWidget {
  const SelectCarPage({Key? key}) : super(key: key);

  @override
  State<SelectCarPage> createState() => _SelectCarPageState();
}

class _SelectCarPageState extends State<SelectCarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("选车"),
    );
  }
}
