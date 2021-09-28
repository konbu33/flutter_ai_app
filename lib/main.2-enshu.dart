import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _buildBox(double size, MaterialColor color) {
    return Container(color: color, height: size, width: size);
  }

  Widget _buildCol(MainAxisAlignment align) {
    double size = 100;

    return Column(
      mainAxisAlignment: align,
      children: [
        _buildBox(size, Colors.red),
        _buildBox(size, Colors.green),
        _buildBox(size, Colors.blue),
        _buildBox(size, Colors.yellow),
      ],
    );
  }

  Widget _buildHome() {
    return Container(
      // color: Colors.purple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCol(MainAxisAlignment.start),
          _buildCol(MainAxisAlignment.center),
          _buildCol(MainAxisAlignment.end),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "apptitle",
      home: _buildHome(),
    );
  }
}
