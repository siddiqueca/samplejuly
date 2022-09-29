import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:samplejuly/loginn.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MySplash()),
  );
}
class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);
  @override
  State<MySplash> createState() => _MySplashState();}
class _MySplashState extends State<MySplash> {
  @override
  void initState() => Timer(const Duration(seconds: 5), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/newback.jpg",
                  ))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage("assets/images/adidas.png")),
                Text(
                  "My First App",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
