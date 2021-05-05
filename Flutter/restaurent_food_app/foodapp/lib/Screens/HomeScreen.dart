import 'package:flutter/material.dart';
import 'package:foodapp/Components/DefaultHeader.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              DefaultHeader(
                isImage: false,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
