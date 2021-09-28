/* 1-1. Hello World */

import 'package:flutter/material.dart';

// void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

// 最初に表示するWidgetのクラス
class MyApp extends StatelessWidget {
  // StatelessWidgetを継承
  @override
  Widget build(BuildContext context) {
    //buildメソッドでUIを作成
    return MaterialApp(
      // マテリアルデザインのアプリ
      title: "My Simple App", // アプリのタイトル
      home: Scaffold(
        // マテリアルデザインの土台
        appBar: AppBar(
          // ヘッダーに表示するアプリケーションバー
          title: Text("Live!人工知能"), // タイトルを表示
        ),
        body: Center(
          // 中央に配置
          child: Text("Hello Widgets!"), // 文字列を配置
        ),
      ),
    );
  }
}

// void main() => runApp(MyApp2()); // 引数のWidgetが画面いっぱいに表示される

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My simple app 2",
      home: Scaffold(
        appBar: AppBar(title: Text("jinkou")),
        body: Center(
          child: Text("Hello flutter"),
        ),
      ),
    );
  }
}

// void main() => runApp(MyApp3()); // 引数のWidgetが画面いっぱいに表示される

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "aaaa",
      home: Scaffold(
        appBar: AppBar(title: Text("bbbb")),
        body: Center(
          child: Text("cccc"),
        ),
      ),
    );
  }
}

void main() => runApp(MyApp4()); // 引数のWidgetが画面いっぱいに表示される

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "foege",
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Center(
          child: Text("child"),
        ),
      ),
    );
  }
}
