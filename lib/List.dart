import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home List'),
      ),
      body: ListView(
        children: [
          const Center(
              child: Text(
            "Contacts",
            style: TextStyle(color: Colors.black, fontSize: 40),
          )),
          Card(
            color: Colors.tealAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/profilepics/profile.png"),
              ),
              title: const Text("Siddique"),
              subtitle: const Text("9745590663"),
              trailing: Wrap(
                spacing: 40,
                children: const [
                  Icon(Icons.message_outlined),
                  Icon(Icons.call),
                ],
              ),
              onTap: () {
                Fluttertoast.showToast(
                  msg: "Hello",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                );
              },
            ),
          ),
          Card(
            color: Colors.deepOrangeAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/profilepics/profile.png"),
                ),
                title: const Text("Rahul"),
                subtitle: const Text("7045120663"),
                trailing: Wrap(
                  spacing: 40,
                  children: const [
                    Icon(Icons.message_outlined),
                    Icon(Icons.call),
                  ],
                )),
          ),
          Card(
            color: Colors.blueAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/profilepics/profile.png"),
                ),
                title: const Text("Hari"),
                subtitle: const Text("8041290663"),
                trailing: Wrap(
                  spacing: 40,
                  children: const [
                    Icon(Icons.message_outlined),
                    Icon(Icons.call),
                  ],
                )),
          ),
          Card(
            color: Colors.lightGreen,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/profilepics/profile.png"),
                ),
                title: const Text("Jobin"),
                subtitle: const Text("7812389128"),
                trailing: Wrap(
                  spacing: 40,
                  children: const [
                    Icon(Icons.message_outlined),
                    Icon(Icons.call),
                  ],
                )),
          ),
          Card(
            color: Colors.pink,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/profilepics/profile.png"),
                ),
                title: const Text("Abin"),
                subtitle: const Text("8089876564"),
                trailing: Wrap(
                  spacing: 40,
                  children: const [
                    Icon(Icons.message_outlined),
                    Icon(Icons.call),
                  ],
                )),
          ),
          Card(
            color: Colors.amber,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/profilepics/profile.png"),
                ),
                title: const Text("Farhan"),
                subtitle: const Text("7898987678"),
                trailing: Wrap(
                  spacing: 40,
                  children: const [
                    Icon(Icons.message_outlined),
                    Icon(Icons.call),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
