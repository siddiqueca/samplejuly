import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: NewHome(),
  ));
}

class NewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: DataTable(
        columns: [], rows: [],
      ),
    );
  }
}