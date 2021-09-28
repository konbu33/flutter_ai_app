/* 1-3. Statefulウィジェット */

import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
// import 'package:english_words/english_words.dart';
import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

// 状態を管理するクラスは、Stateクラスを継承
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

// StatefulなWidgetのクラスは、StatefulWidgetを継承
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

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
          child: RandomWords(),
        ),
      ),
    );
  }
}

// void main() => runApp(MyApp2());

class RandomWordsState2 extends State<RandomWords3> {
  @override
  Widget build(BuildContext context) {
    final wordPair2 = WordPair.random();
    return Text(wordPair2.asCamelCase);
  }
}

class RandomWords2 extends StatefulWidget {
  @override
  RandomWordsState2 createState() => RandomWordsState2();
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("appbar"),
        ),
        body: Center(
          child: RandomWords2(),
        ),
      ),
    );
  }
}

void main() => runApp(MyApp3());

class RandomWordsState3 extends State {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords3 extends StatefulWidget {
  @override
  RandomWordsState3 createState() => RandomWordsState3();
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "material app3",
      home: Scaffold(
        appBar: AppBar(title: Text("english_words_pair3")),
        body: Center(
          child: RandomWords3(),
        ),
      ),
    );
  }
}
