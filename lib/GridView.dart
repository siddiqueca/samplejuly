import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridHome(),
  ));
}

class GridHome extends StatelessWidget {
  List<String> images = [
    "assets/shoesbrand/adidasremovebg.png",
    "assets/shoesbrand/nikeremovebg.png",
    "assets/shoesbrand/newblnceremovebg.png",
    "assets/shoesbrand/pumaremovebg.png"
  ];

  GridHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
          itemBuilder: (BuildContext context, int index) {
            return Container(
                color: Colors.green,
                child: Column(children: [
                  Expanded(flex:1, child: Image.asset(images[index])),
                  const Expanded(
                    flex: 1,
                    child: ListTile(
                      title: Text("Buy Now"),
                      subtitle: Text("Size"),
                      leading: Icon(Icons.shopping_bag_outlined),
                      trailing: Icon(Icons.forest_outlined),
                    ),
                  )
                ]));
          },
        ),
      ),
    );
  }
}
