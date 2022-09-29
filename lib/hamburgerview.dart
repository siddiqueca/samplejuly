import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Theme(
            data: ThemeData(primaryColor: Colors.blue),
            child: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: const Text("Store"),
                    accountEmail: const Text("shoestore@gmail.com"),
                    currentAccountPicture: GestureDetector(
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.buzzfeed.com/buzzfeed-static/static/2022-05/11/14/asset/47f6c9314462/sub-buzz-2980-1652280754-1.jpg"),
                      ),
                      onTap: () => print('Current User'),
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://thumbs.dreamstime.com/b/doodles-music-illustration-creative-musical-background-colorful-stylish-raster-wallpaper-109758227.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  ListTile(title: const Text('Home Page'),
                      trailing: const Icon(Icons.menu),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                OtherPage(),));
                      }
                  ),
                  ListTile(title: const Text('Settings Page'),
                      trailing: const Icon(Icons.menu),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SettingsPage()));
                      }
                  ),
                  ListTile(title: const Text('About Page'),
                      trailing: const Icon(Icons.menu),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                AboutPage()));
                      }
                  ),
                ],
              ),
            )),
      ),);
  }
}

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("About Page"),),
      body: const Text("About Page"),
    );
  }
}

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("About Page"),),
      body: const Text("About Page"),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Other Page"),),
      body: const Text("Other Page"),
    );
  }

}
