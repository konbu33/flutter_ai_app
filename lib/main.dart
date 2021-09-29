import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

var _routes = {
  "/home": (BuildContext context) => HomePage(),
  "/sub1": (BuildContext context) => Sub1(),
  "/sub2": (BuildContext context) => Sub2(),
};

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "m-app",
      home: HomePage(),
      routes: _routes,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return _BuildBody(
      title: "HomePage",
      nextPage: "/sub1",
      privPage: "none",
    );
  }
}

class _BuildBody extends StatefulWidget {
  const _BuildBody({Key? key, this.title, this.nextPage, this.privPage})
      : super(key: key);

  final String? title;
  final String? nextPage;
  final String? privPage;

  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  @override
  Widget build(BuildContext context) {
    void _toNextPage() {
      Navigator.of(context).pushNamed(widget.nextPage!);
    }

    void _toBack() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.title!),
            MaterialButton(
              onPressed: _toNextPage,
              child: Text(widget.nextPage!),
            ),
            OutlinedButton(onPressed: _toBack, child: Text(widget.privPage!)),
          ],
        ),
      ),
    );
  }
}

class Sub1 extends StatefulWidget {
  const Sub1({Key? key}) : super(key: key);

  @override
  _Sub1State createState() => _Sub1State();
}

class _Sub1State extends State<Sub1> {
  @override
  Widget build(BuildContext context) {
    return _BuildBody(title: "Sub1", nextPage: "/sub2", privPage: "/home");
  }
}

class Sub2 extends StatefulWidget {
  const Sub2({Key? key}) : super(key: key);

  @override
  _Sub2State createState() => _Sub2State();
}

class _Sub2State extends State<Sub2> {
  @override
  Widget build(BuildContext context) {
    return _BuildBody(title: "Sub2", nextPage: "/home", privPage: "/sub1");
  }
}
