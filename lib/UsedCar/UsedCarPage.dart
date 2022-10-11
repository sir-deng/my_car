import 'package:flutter/material.dart';

class UsedCarPage extends StatefulWidget {
   UsedCarPage({Key? key}) : super(key: key);

  @override
  State<UsedCarPage> createState() => _UsedCarPageState();
}

class _UsedCarPageState extends State<UsedCarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text("二手车"));
  }
}
