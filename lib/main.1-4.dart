/* 1-4. ListView */

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp()); // 引数のWidgetが画面いっぱいに表示される

// 状態を管理するクラスは、Stateクラスを継承
class RandomWordsState extends State<RandomWords> {
  // _を付けるとライブラリ外からアクセスできなくなる
  // ListViewのWidgetを作るメソッド
  Widget _buildSuggestions() {
    final _wordPairs = <WordPair>[]; // 単語のペアを格納するリスト
    return ListView.builder(itemBuilder: (context, i) {
      // itemBuilderで一行ごとに処理が呼ばれる
      if (i.isOdd) return Divider(); // 奇数行には水平線を表示

      final index = i ~/ 2; // ~/は結果が整数の割り算
      if (index >= _wordPairs.length) {
        // 行数がリストの要素数を越えれば
        _wordPairs.addAll(generateWordPairs().take(10)); // 単語のペアを10個追加
      }
      return _buildRow(_wordPairs[index]);
    });
  }

  // 単語のペアから、形式を整えた行のWidgetを作るメソッド
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live!人工知能"),
      ),
      body: _buildSuggestions(),
    );
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
        home: RandomWords());
  }
}

// ---------------------------------------------------------

void main() => runApp(MyApp2());

class RandomWordsState2 extends State {
  Widget _buildSuggestions() {
    final _wordPair = <WordPair>[];

    // _wordPair.addAll(generateWordPairs().take(3));
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return Divider();

      final index = i ~/ 2;
      print('i : index : $i : $index');

      if (index >= _wordPair.length) {
        _wordPair.addAll(generateWordPairs().take(10));
      }
      // return Center(child: Text(_wordPair[index].asCamelCase));
      return _buildRow(_wordPair[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(pair.asCamelCase),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title aaa"),
      ),
      body: _buildSuggestions(),
    );
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
      title: "mate-app",
      home: RandomWords2(),
    );
  }
}
