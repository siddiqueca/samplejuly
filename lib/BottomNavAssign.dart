import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

void main() {
  runApp(const NwHme());
}

class NwHme extends StatefulWidget {
  const NwHme({Key? key}) : super(key: key);

  @override
  _NwHmeState createState() => _NwHmeState();
}

class _NwHmeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(190),
          child: Center(
            child: Stack(children: [
              AppBar(
                backgroundColor: Colors.lightBlueAccent[200],
                actions: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite_border))
                ],
                leading: const Icon(Icons.menu),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 105, right: 100, left: 100),
                  child: Text(
                    "Type your Location",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 30, right: 30),
                child: OutlineSearchBar(
                  searchButtonPosition: SearchButtonPosition.leading,
                  borderRadius: BorderRadius.circular(30),
                  hintText: '    Bouddha, Kathmandu',
                ),
              ),
            ]),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(05),
                        color: Colors.pink),
                    height: 80,
                    width: 100,
                    child: Stack(children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 52, left: 33),
                          child: Text("Hotel",
                              style: TextStyle(color: Colors.white))),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: const [Icon(Icons.hotel)],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(05),
                        color: Colors.blueAccent),
                    height: 80,
                    width: 100,
                    child: Stack(children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 52, left: 18),
                          child: Text("Restaurant",
                              style: TextStyle(color: Colors.white))),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: const [
                              Icon(Icons.local_dining_sharp),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(05),
                        color: Colors.orange),
                    height: 80,
                    width: 100,
                    child: Stack(children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 52, left: 35),
                          child: Text(
                            "Cafe",
                            style: TextStyle(color: Colors.white),
                          )),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: const [Icon(Icons.coffee)],
                          ),
                        ),
                      ),
                    ]),
                  )
                ]),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Stack(children: [
                    Image.network(
                        "https://media.nomadicmatt.com/2021/hoteltips2.jpg"),
                    const Padding(
                        padding: EdgeInsets.only(left: 340, top: 05),
                        child: Icon(Icons.star_border_outlined)),
                    Padding(
                      padding: const EdgeInsets.only(left: 310, top: 160),
                      child: Container(
                          decoration: const BoxDecoration(color: Colors.white),
                          height: 35,
                          width: 45,
                          child: const Center(
                            child: Text(
                              "\$40",
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 210),
                      child: Container(
                        padding: EdgeInsets.zero,
                        height: 110,
                        width: 365,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 225, left: 10),
                      child: Text(
                        "Awesome room near Bouddha",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 255, left: 11),
                        child: Text("Bouddha, Kathmandu")),
                    Padding(
                      padding: const EdgeInsets.only(top: 278, left: 11),
                      child: Row(
                        children: const [
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Text("(220 reviews)")
                        ],
                      ),
                    )
                  ])
                ],
              )),
        ]),
      ),
    );
  }
}
