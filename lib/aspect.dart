import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Aspect extends StatefulWidget {
  const Aspect({Key? key}) : super(key: key);

  @override
  _AspectState createState() => _AspectState();
}

class _AspectState extends State<Aspect> {
  @override
  Widget build(BuildContext context) {
    const String name = "Aspect";
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 80,
            color: Colors.brown,
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Card(
                  color: Colors.amber,
                  child: Image.network(
                      'http://theimageconference.org/wp-content/uploads/2019/11/vancouver_image_conference_2.jpg')),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: Container(
              alignment: Alignment.center,
              child: Text("sizedbox"),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.5),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
              child: Text("naomi"),
            ),
          ),
        ],
      ),
    );
  }
}
