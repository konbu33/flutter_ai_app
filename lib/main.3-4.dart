/* 3-4. スライダー */

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
  double _value = 0.0;

  void _changeSlider(double e) {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _value = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(child: Text("値：${_value}")),
        Slider(
          // スライダー
          label: '${_value}',
          min: 0,
          max: 10,
          value: _value,
          activeColor: Colors.orange,
          inactiveColor: Colors.blueAccent,
          divisions: 10,
          onChanged: _changeSlider,
        )
      ],
    ));
  }
}

// ------------------------------------------

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "aaaa",
      home: Scaffold(
        // body: _Body(),
        body: _Slider(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Slider extends StatefulWidget {
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<_Slider> {
  double _volume = 0.0;

  Widget _displayVolume() {
    return Text(
      "$_volume",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40),
    );
  }

  void _onChanged(double e) {
    setState(() {
      _volume = e;
    });
  }

  Widget _buildSlider() {
    return Slider(
      min: 0,
      max: 10,
      label: "$_volume",
      value: _volume,
      onChanged: _onChanged,
      divisions: 10,
      activeColor: Colors.pink,
      inactiveColor: Colors.green,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _displayVolume(),
          _buildSlider(),
        ],
      ),
    );
  }
}
