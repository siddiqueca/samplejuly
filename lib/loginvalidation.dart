import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:samplejuly/List.dart';
import 'package:samplejuly/register.dart';

void main() {
  runApp(MaterialApp(
    home: HomePageValid(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePageValid extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Form(
        key: _form,
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email Address', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || !(text.contains('@')) || text.isEmpty) {
                    return "Enter a Valid Email Address";
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
                validator: (text) {
                  if (text == null || !(text.length <= 6) || text.isEmpty) {
                    return "Invalid Password";
                  }
                  return null;
                },
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: ElevatedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      final isValid = _form.currentState!.validate();
                      if (isValid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Invalid Username/Password",
                            gravity: ToastGravity.BOTTOM,
                            fontSize: 13.0);
                      }
                    })),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            }, child: const Text("Not a User? SignUp Now"))
          ],
        ),
      ),
    );
  }
}
