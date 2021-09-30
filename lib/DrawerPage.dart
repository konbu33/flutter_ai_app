import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int _selectedItem = 0;

  // List<Widget> _menuList = [
  final _menuList = <Widget>[
    DrawerHeader(
      child: Column(
        children: [
          Text("Heading"),
          Image(
            fit: BoxFit.fitHeight,
            height: 100,
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          ),
        ],
      ),
    ),
    ListTile(title: Text("menu1")),
    ListTile(title: Text("menu2")),
    ListTile(title: Text("menu3")),
    ListTile(title: Text("menu3")),
    ListTile(title: Text("menu3")),
    ListTile(title: Text("menu3")),
  ];

  Widget _onPressed() {
    return ModalBarrier(
      dismissible: true,
      color: Colors.lightBlue,
      barrierSemanticsDismissible: true,
    );
  }

  List<BottomNavigationBarItem> _bnbis = [
    // // BottomNavigationBarItem(title: Text("aaa"), icon: Icon(Icons.home)),
    // BottomNavigationBarItem(title: Text("test"), icon: Icon(Icons.home)),

    BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
    BottomNavigationBarItem(label: "search", icon: Icon(Icons.search)),
    BottomNavigationBarItem(
        label: "library_add", icon: Icon(Icons.library_add)),
  ];

  List<Widget> bodyList = [
    Text("home"),
    Text("search"),
    Text("library_add"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DrawerPage"),
      ),
      drawer: Drawer(
        child: ListView(
          children: _menuList,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("DrawerPage"),
              Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
              Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
              ),
              bodyList.elementAt(_selectedItem),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onPressed,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bnbis,
        currentIndex: _selectedItem,
        selectedItemColor: Colors.amber,
        onTap: (i) {
          setState(() {
            _selectedItem = i;
          });
          print("$i");
        },
      ),
    );
  }
}
