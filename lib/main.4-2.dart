/* 4-2. TabBar */

import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _tab = <Tab>[
    // タブバーの表示
    Tab(text: "Railway", icon: Icon(Icons.directions_railway)),
    Tab(text: "Subway", icon: Icon(Icons.directions_subway)),
    Tab(text: "Walk", icon: Icon(Icons.directions_walk)),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      // タブを制御
      length: _tab.length, // タブの数
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Live!人工知能"),
          bottom: TabBar(
            // タブバー
            tabs: _tab,
          ),
        ),
        body: TabBarView(// 表示画面のウィジェット一覧を渡す
            children: <Widget>[
          TabPage(title: "Railway", icon: Icons.directions_railway),
          TabPage(title: "Subway", icon: Icons.directions_subway),
          TabPage(title: "Walk", icon: Icons.directions_walk),
        ]),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final IconData? icon;
  final String? title;

  const TabPage({Key? key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle =
        Theme.of(context).textTheme.headline4; // 文字のスタイル
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 72.0, color: textStyle!.color),
          Text(title!, style: textStyle),
        ],
      ),
    );
  }
}

// --------------------------------------------------
// void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(60.0),
        //   child: _AppBar(),
        // ),
        // appBar: _AppBar(),
        body: _Body(),
      ),
    );
  }
}

// class _AppBar extends StatelessWidget implements PreferredSizeWidget {
class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("AppBar"),
      centerTitle: true,
    ));
  }

  // @override
  // Size get preferredSize => Size.fromHeight(40.0);
}

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _tabs = <Tab>[
    Tab(
      text: "subway",
      icon: Icon(Icons.directions_subway),
    ),
    Tab(
      text: "railway",
      icon: Icon(Icons.directions_railway),
    ),
    Tab(
      text: "walk",
      icon: Icon(Icons.directions_walk),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text("appBar"),
            bottom: TabBar(
              tabs: _tabs,
            ),
          ),
          body: TabBarView(
            children: [
              TabPage2(title: "subway", icon: Icons.directions_subway),
              TabPage2(
                title: "railway",
                icon: Icons.directions_railway,
              ),
              TabPage2(
                title: "walk",
                icon: Icons.directions_walk,
              ),
            ],
          )),
    );
  }
}

class TabPage2 extends StatelessWidget {
  final IconData? icon;
  final String? title;

  const TabPage2({Key? key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            icon,
          ),
          Text(title!),
        ],
      ),
    );
  }
}

// ----------------------------------------

void main() => runApp(MyApp3());

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "material-app",
      home: _MainPage3(),
    );
  }
}

class _MainPage3 extends StatefulWidget {
  const _MainPage3({Key? key}) : super(key: key);

  @override
  _MainPage3State createState() => _MainPage3State();
}

class _MainPage3State extends State<_MainPage3> {
  final _tabs = <Tab>[
    const Tab(text: "home", icon: Icon(Icons.home)),
    const Tab(text: "library", icon: Icon(Icons.library_books)),
    const Tab(text: "search", icon: Icon(Icons.search)),
    const Tab(text: "camera", icon: Icon(Icons.camera)),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar"),
          centerTitle: true,
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: const TabBarView(children: [
          TabPage3(title: "home3", icon: Icons.home),
          TabPage3(title: "library3", icon: Icons.library_add),
          TabPage3(title: "search3", icon: Icons.search),
          TabPage3(title: "camera3", icon: Icons.camera),
        ]),
        //   bottomNavigationBar: BottomNavigationBar(
        //     items: [
        //       BottomNavigationBarItem(label: "search", icon: Icon(Icons.search)),
        //       BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
        //       BottomNavigationBarItem(
        //           label: "library", icon: Icon(Icons.library_add)),
        //     ],
        //   ),
      ),
    );
  }
}

class TabPage3 extends StatelessWidget {
  const TabPage3({Key? key, this.icon, this.title}) : super(key: key);

  final IconData? icon;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            title!,
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
