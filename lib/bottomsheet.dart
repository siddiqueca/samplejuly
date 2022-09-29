import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: NwApp()));
}

class NwApp extends StatelessWidget {
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
              padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: MediaQuery.of(ctx).viewInsets.bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Age'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Submit"))
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
          title: const Text("BottomSheet"),
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _show(context),
          child: const Icon(Icons.add),
        ),
    );
  }
}
