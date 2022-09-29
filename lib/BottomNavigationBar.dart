import 'package:flutter/material.dart';

void main() {
  runApp(BasicBottomNav());
}

class BasicBottomNav extends StatefulWidget {
  const BasicBottomNav({Key? key}) : super(key: key);

  @override
  _BasicBottomNavState createState() => _BasicBottomNavState();
}

class _BasicBottomNavState extends State{

  int _selectedIndex = 0;
  static const List _pages = [
    Icon(Icons.call, size: 150,),
    Icon(Icons.camera, size: 150,),
    Icon(Icons.chat, size: 150,),
    Icon(Icons.chat, size: 150,),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;


    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Navigation Bar"),
          ),
          body: Center(
            child: _pages.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.lightBlueAccent,

          )),

    );
  }

}