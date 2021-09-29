/* 4-3. Drawer */

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live!人工知能"),
      ),
      drawer: Drawer(
        // Drawerの配置
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("ヘッダーです。"),
              decoration: BoxDecoration(
                // Boxによる装飾
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("アイテムその1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("アイテムその2"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("アイテムその3"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------------------

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "m-app",
      home: MainPage2(),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => MainPage2(),
        "/sub": (BuildContext context) => SubPage2(),
        "/tabsamplepage": (BuildContext context) => TabSamplePage(),
      },
    );
  }
}

class MainPage2 extends StatefulWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  _MainPage2State createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  @override
  Widget build(BuildContext context) {
    void _onPressed() {
      // Navigator.push(
      // context, MaterialPageRoute(builder: (context) => SubPage2()));
      Navigator.pushNamed(context, "/sub");
    }

    return Scaffold(
      // appBar: AppBarTab(),
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("SubPage2"),
            ElevatedButton(onPressed: _onPressed, child: Text("to SubPage2."))
          ],
        ),
      ),
    );
  }
}

class SubPage2 extends StatefulWidget {
  const SubPage2({Key? key}) : super(key: key);

  @override
  _SubPage2State createState() => _SubPage2State();
}

class _SubPage2State extends State<SubPage2> {
  @override
  Widget build(BuildContext context) {
    void _onPressed() {
      Navigator.pop(context);
    }

    void _toTabSamplePage() {
      Navigator.of(context).pushNamed('/tabsamplepage');
    }

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("MainPage2"),
            ElevatedButton(onPressed: _onPressed, child: Text("to MainPage2.")),
            ElevatedButton(
                onPressed: _toTabSamplePage, child: Text("to TabSamplePabe"))
          ],
        ),
      ),
    );
  }
}

class AppBarTab extends StatefulWidget implements PreferredSizeWidget {
  const AppBarTab({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(300.0);

  @override
  _AppBarTabState createState() => _AppBarTabState();
}

class _AppBarTabState extends State<AppBarTab> {
  final _tabs = <Tab>[
    const Tab(
      text: "home",
      icon: Icon(Icons.home),
    ),
    const Tab(
      text: "library_add",
      icon: Icon(Icons.library_add),
    ),
    const Tab(
      text: "search",
      icon: Icon(Icons.search),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            AppBar(
              title: const Text("AppBarTab"),
              bottom: TabBar(
                tabs: _tabs,
              ),
            ),
            TabBarView(
              children: [
                TabPage2(text: "home2", icon: Icons.home),
                TabPage2(text: "library_add2", icon: Icons.library_add),
                TabPage2(text: "search2", icon: Icons.search),
              ],
            ),
          ],
        ));
  }
}

class TabSamplePage extends StatefulWidget {
  const TabSamplePage({Key? key}) : super(key: key);

  @override
  _TabSamplePageState createState() => _TabSamplePageState();
}

class _TabSamplePageState extends State<TabSamplePage> {
  final _tabs = <Tab>[
    Tab(text: "home3", icon: Icon(Icons.home)),
    Tab(text: "library_add3", icon: Icon(Icons.library_add)),
    Tab(text: "search3", icon: Icon(Icons.search)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabSamplePage"),
          bottom: TabBar(
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: [
            TabPage2(text: "home3", icon: Icons.home),
            TabPage2(text: "library_add3", icon: Icons.library_add),
            TabPage2(text: "search3", icon: Icons.search),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Header!"),
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),
              ListTile(
                title: Text("timer"),
                trailing: Icon(Icons.alarm),
              ),
              ListTile(
                title: Text("e_mobile"),
                trailing: Icon(Icons.e_mobiledata),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabPage2 extends StatefulWidget {
  const TabPage2({Key? key, this.text, this.icon}) : super(key: key);

  final String? text;
  final IconData? icon;

  @override
  _TabPage2State createState() => _TabPage2State();
}

class _TabPage2State extends State<TabPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.text!),
          Icon(widget.icon),
        ],
      ),
    );
  }
}
