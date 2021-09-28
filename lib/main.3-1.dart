/* 3-1. ボタン */

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Live!人工知能"),
        ),
        body: Center(
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  int _count = 0;

  void _handlePressed() {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _count++;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "$_count",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30.0,
          ),
        ),
        MaterialButton(
          // 一番シンプルなボタン
          onPressed: _handlePressed,
          color: Colors.blue,
          child: Text(
            "いいね!",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        )
      ],
    ));
  }
}

// -------------------------------------------

void main() => runApp(MyApp2());

class MyFormState2 extends State<MyForm2> {
  int _count = 99;

  Widget _buildPlusButton() {
    return MaterialButton(
      key: UniqueKey(),
      color: Colors.green,
      onPressed: () {
        print('On press!!');
        setState(() {
          _count++;
        });
      },
      child: Text(
        "+",
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    );
  }

  Widget _buildMinusButton() {
    return MaterialButton(
      key: UniqueKey(),
      color: Colors.green,
      onPressed: () {
        print('On press!!');
        setState(() {
          _count--;
        });
      },
      child: Text(
        "-",
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(children: [
      // Text(_count.toString()),
      Text("$_count"),
      _buildPlusButton(),
      _buildMinusButton(),
    ]);
  }
}

class MyForm2 extends StatefulWidget {
  MyFormState2 createState() => MyFormState2();
}

class MyApp2 extends StatelessWidget {
  Widget _buildBody() {
    return Container(
      color: Colors.blue,
      width: 300,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [MyForm2()],
      ),
    );
  }

  Widget _buildHome() {
    return Scaffold(
      appBar: AppBar(title: Text("app title")),
      body: _buildBody(),
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
