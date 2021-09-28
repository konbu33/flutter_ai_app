/* 2-2. RowとColumn */

import 'package:flutter/material.dart';

// void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Container(
        child: Row(
          // 行
          mainAxisAlignment:
              MainAxisAlignment.center, // 中央に配置（他にstart、end、spaceAroundなど）
          children: <Widget>[
            Column(
              // 列
              mainAxisAlignment: MainAxisAlignment.center, // 中央に配置
              children: <Widget>[
                Container(color: Colors.blue, width: 100, height: 100),
                Container(color: Colors.red, width: 100, height: 100),
                Container(color: Colors.yellow, width: 100, height: 100),
              ],
            ),
            Column(
              // 列
              mainAxisAlignment: MainAxisAlignment.center, // 中央に配置
              children: <Widget>[
                Container(color: Colors.green, width: 100, height: 100),
                Container(color: Colors.orange, width: 100, height: 100),
                Container(color: Colors.white, width: 100, height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// --------------------------------------------

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  Widget _buildRow() {
    Widget _buildCol(MaterialColor c1, c2, c3) {
      Widget _buildContainer(MaterialColor color) {
        return Container(
          color: color,
          width: 100,
          height: 100,
        );
      }

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildContainer(c1),
          _buildContainer(c2),
          _buildContainer(c3),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCol(Colors.red, Colors.green, Colors.yellow),
        _buildCol(Colors.green, Colors.yellow, Colors.red),
        _buildCol(Colors.yellow, Colors.red, Colors.green),
      ],
    );
  }

  Widget _buildHome() {
    return Container(
      color: Colors.blue,
      child: _buildRow(),
      alignment: Alignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "2-2",
      home: _buildHome(),
    );
  }
}
