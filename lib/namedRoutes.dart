import 'package:flutter/material.dart';

void main(){
  runApp(NamedHome());
}

class NamedHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePagenw(), 
    debugShowCheckedModeBanner: false,routes: {
    'settings': (BuildContext ctx) => SettingsPage(),
    'list page': (BuildContext ctx) => MyList(),
    },
    );
  }

}

MyList (){
}

class HomePagenw extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              Navigator.of(context).pushNamed('table');
            }, child: const Text("Register")),
            const SizedBox(
              width: 30,
            ),
            TextButton(onPressed: () {
              Navigator.of(context).pushNamed('table');
            }, child: const Text('Table')),

          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: Text("Route Name: ${ModalRoute.of(context)?.settings.name}"),
      ),
    );
  }

}