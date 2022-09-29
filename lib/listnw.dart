import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: List2(),
  ));
}

class List2 extends StatefulWidget {
  const List2({Key? key}) : super(key: key);

  @override
  State<List2> createState() => _List2State();
}

class _List2State extends State<List2> {
  List<String> vegetables = ['Tomato', 'Onion', 'Carrot', 'Potatoes'];
  List<String> images = [
    "assets/vegetables/Tomatoes.jpg",
    "assets/vegetables/Onion.jpg",
    "assets/vegetables/Carrots.jpg",
    "assets/vegetables/Pota.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.Builder"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(images[index]),
              title: Text(vegetables[index]),
            ),
          );
        },
        itemCount: images.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            thickness: 5,
            color: Colors.pink,
          );
        },
      ),
    );
  }
}
