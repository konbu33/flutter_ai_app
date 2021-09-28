/* 2-3. Expanded */

import 'package:flutter/material.dart';

// void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Container(
        child: Row(
          children: <Widget>[
            Expanded(
                // 引き延ばして表示
                flex: 1,
                child: Container(color: Colors.red)),
            Expanded(
              flex: 2,
              child: Container(color: Colors.green),
            ),
            Expanded(
              child: Container(color: Colors.blue),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  Widget _buildHome() {
    Widget _buildExpanded({MaterialColor? color, int? flex}) {
      return Expanded(
        flex: flex!,
        child: Container(
          color: color,
        ),
      );
    }

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildExpanded(flex: 1, color: Colors.pink),
          _buildExpanded(flex: 2, color: Colors.green),
          _buildExpanded(flex: 3, color: Colors.yellow),
          _buildExpanded(color: Colors.blue, flex: 4),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "m-app",
      home: _buildHome(),
    );
  }
}
