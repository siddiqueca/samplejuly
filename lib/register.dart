import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text("Registration Form",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
            const Padding(
                padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Full Name"),
                  hintText: "Enter your Full Name",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                  label: Text("Phone Number"),
                  hintText: "Enter your Phone Number with country code",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                  prefixIcon: Icon(Icons.email),
                  label: Text("Email"),
                  hintText: "Enter your Email Address",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.shield),
                  label: Text("Password"),
                  hintText: "Enter your New Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                width: 470,
                child: ElevatedButton(onPressed: () {}, child: const Text("REGISTER")),
              ),
            )
          ],
        ),
      )
    );
  }

}