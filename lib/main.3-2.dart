/* 3-2. テキストの入力 */

import 'package:flutter/material.dart';

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
  String _text = '';

  void _handleText(String e) {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _text = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "$_text",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30.0,
          ),
        ),
        TextField(
          // テキストを表示
          style: TextStyle(color: Colors.red),
          onChanged: _handleText,
        ),
      ],
    ));
  }
}

// -------------------------------------------

void main() => runApp(MyApp2());

class MyFormState2 extends State<MyForm2> {
  String _name = "init";

  Widget _buildNameView() {
    return Text(
      "$_name",
      style: TextStyle(fontSize: 30, color: Colors.blue),
    );
  }

  Widget _buildNameInput() {
    void _onChanged(String e) {
      setState(() {
        _name = e;
      });
    }

    return TextField(
      onChanged: _onChanged,
      // onChanged: (String e) {
      //   setState(() {
      //     _name = e;
      //   });
      // },
      style: TextStyle(fontSize: 40, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.lightGreen,
      // width: 300,
      // height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildNameView(), _buildNameInput()],
      ),
    );
  }
}

class MyForm2 extends StatefulWidget {
  @override
  MyFormState2 createState() => MyFormState2();
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "m-app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("appbar"),
        ),
        body: Center(child: MyForm2()),
      ),
    );
  }
}
