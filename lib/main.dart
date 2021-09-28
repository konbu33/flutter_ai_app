/* 3-3. スイッチ */

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
  bool _active = false;

  void _changeSwitch(bool e) {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _active = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Icon(
            Icons.thumb_up,
            color: _active ? Colors.orange : Colors.grey,
            size: 100.0,
          ),
        ),
        Switch(
          // スイッチ
          value: _active,
          onChanged: _changeSwitch,
        )
      ],
    ));
  }
}

// ------------------------------------

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MaterialApp();
  }
}

class _MaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "m-app",
      debugShowCheckedModeBanner: false,
      home: _Scaffold(),
    );
  }
}

class _Scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _Body(),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text("AppBar"));
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        height: 300.0,
        width: 300.0,
        child: _ThumbUp(),
      ),
    );
  }
}

class _ThumbUp extends StatefulWidget {
  _ThumbUpState createState() => _ThumbUpState();
}

class _ThumbUpState extends State<_ThumbUp> {
  bool _isActive = false;

  Widget _icon() {
    return Icon(
      Icons.thumb_up,
      color: _isActive ? Colors.orange : Colors.grey,
      size: 100,
    );
  }

  Widget _switch() {
    void _onChanged(bool e) {
      setState(() {
        print("e: $e");
        _isActive = e;
      });
    }

    return Switch(
      value: _isActive,
      onChanged: _onChanged,
      // onChanged: (bool e) {
      //   setState(() {
      //     print("e: $e");
      //     isActive = !isActive;
      //   });
      // });
    );
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_icon(), _switch()],
    );
  }
}
