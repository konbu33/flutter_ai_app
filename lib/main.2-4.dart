/* 2-4. Stack */

import 'package:flutter/material.dart';

// void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My Simple App"),
            ),
            body: Stack(
              // 重ねて表示
              children: <Widget>[
                Container(width: 200, height: 200, color: Colors.red),
                Container(
                  width: 100,
                  height: 120,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 70,
                  color: Colors.blue,
                )
              ],
            )));
  }
}

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  Widget _buildListViewSepa() {
    var _sampleList = [];

    return ListView.separated(
        itemBuilder: (context, i) {
          _sampleList.addAll(["$i : hello"]);
          return ListTile(title: Text(_sampleList[i]));
        },
        separatorBuilder: (context, i) {
          return Container(
            color: Colors.blue,
            height: 30,
          );
        },
        // itemCount: _sampleList.length + 2);
        itemCount: 10);
  }

  Widget _buildListView() {
    var _sampleList = [];

    return ListView.builder(itemBuilder: (context, i) {
      // if (i.isOdd) return Divider();
      _sampleList.addAll(["$i : hello"]);
      print(_sampleList[i]);

      return ListTile(
        title: Text(_sampleList[i]),
        tileColor: Colors.lightGreen,
      );
    });
  }

  Widget _buildStack(double size, MaterialColor color) {
    // return Container(color: color, width: size, height: size);
    return Container(
      color: color,
      width: size,
      height: size,
      child: Card(child: _buildListViewSepa()),
    );
  }

  Widget _buildHome() {
    return Container(
      alignment: Alignment.bottomRight,
      child: Stack(
        children: [
          _buildStack(300, Colors.yellow),
          // _buildStack(200, Colors.green),
          // _buildStack(100, Colors.red),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      home: _buildHome(),
    );
  }
}
