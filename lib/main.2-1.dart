/* 2-1. Container */

import 'package:flutter/material.dart';

// void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300.0,
            height: 300.0,
            child: Text("Live!人工知能"),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  AppBar _buildAppBar() {
    return AppBar(
      title: Text("appbar"),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        color: Colors.lightBlue,
        width: 300,
        height: 300,
        child: Text("_buildBody"),
        alignment: Alignment.center,
      ),
    );
  }

  Widget _buildHome() {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "fegege",
      home: _buildHome(),
    );
  }
}
