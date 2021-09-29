/* 4-1. 画面遷移 */

import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MainPage(), // 最初のページ
        '/subpage': (BuildContext context) => SubPage() // 次のページ
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mainページ"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Main"),
              RaisedButton(
                // 立体的なボタン
                onPressed: () =>
                    Navigator.of(context).pushNamed("/subpage"), // 次の画面を乗せる
                child: Text("Subページへ"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subページ"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Sub"),
              RaisedButton(
                onPressed: () => Navigator.of(context).pop(), // この画面を取り除く
                child: Text("戻る"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// --------------------------------------

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "m-app",
      home: MainPage2(),
      // home: SubPage2(),
      routes: {
        "/home": (BuildContext context) => MainPage2(),
        "/subpage": (BuildContext context) => SubPage2(),
      },
    );
  }
}

class MainPage2 extends StatelessWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onPressed() {
      Navigator.of(context).pushNamed("/subpage");
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => SubPage2()));
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => SubPage2()));
      // Navigator.pushNamed(context, "/subpage");
      // Navigator.pushReplacement(context, SubPage2());
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.greenAccent[200],
          alignment: Alignment.center,
          child: Text("MainPage2"),
        ),
        Container(
          width: 100,
          height: 100,
          child: ElevatedButton(onPressed: _onPressed, child: Text("SubPage2")),
        ),
      ],
    );
  }
}

class SubPage2 extends StatelessWidget {
  const SubPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onPressed() {
      // Navigator.of(context).pop();
      // Navigator.pushReplacementNamed(context, '/home');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainPage2()));
    }

    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text("SubPage2"),
          ),
          Container(
            child: TextButton(
              onPressed: _onPressed,
              child: Text("back MaiPage"),
            ),
          ),
        ],
      ),
    );
  }
}
