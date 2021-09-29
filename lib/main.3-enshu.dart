import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "c-app",
      home: Scaffold(
        body: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  int _minCount = 0;
  int _maxCount = 10;
  bool _isEdit = false;
  final textController = TextEditingController();

  Widget _displayCounter() {
    return Text("$_counter",
        style: TextStyle(
          fontSize: 50,
        ));
  }

  Widget _incrementButton() {
    void _onPressed() {
      setState(() {
        if (_counter == _maxCount) {
          _counter = _maxCount;
        } else {
          _counter++;
        }
      });
    }

    return ElevatedButton(
      onPressed: _isEdit ? _onPressed : null,
      child: Text("いいね！"),
    );
  }

  Widget _decrementButton() {
    void _onPressed() {
      setState(() {
        if (_counter <= _minCount) {
          _counter = _minCount;
        } else {
          _counter--;
        }
      });
    }

    return ElevatedButton(
        onPressed: _isEdit ? _onPressed : null, child: Text("良くないね！"));
  }

  Widget _slider() {
    void _onChanged(double e) {
      int c = e.toInt();
      setState(() {
        _counter = c;
      });
    }

    return Slider(
        min: 0,
        max: 10,
        divisions: 10,
        value: _counter.toDouble(),
        onChanged: _isEdit ? _onChanged : null);
  }

  Widget _textField() {
    void _onChanged(String e) {
      print("textController : ${textController.text}");
      print("e : $e");

      textController.clear();

      int co = 0;
      try {
        co = int.parse(e);
      } catch (e) {
        print("e : $e");
      }

      setState(() {
        _counter = co;
      });
    }

    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: textController,
      onChanged: _isEdit ? _onChanged : null,
    );
  }

  Widget _switch() {
    void _onChanged(bool e) {
      setState(() {
        print("e : $e");
        _isEdit = e;
      });
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Edit ON / OFF"),
      Switch(value: _isEdit, onChanged: _onChanged),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _displayCounter(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _incrementButton(),
            _decrementButton(),
          ]),
          _slider(),
          _textField(),
          _switch(),
        ],
      ),
    );
  }
}
