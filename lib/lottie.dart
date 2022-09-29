import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(HomeNew());
}

class HomeNew extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Lottie.asset('assets/lottie/truckk.json'),
            const Text('NIHAL THE LIZARD',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Lottie.asset('assets/lottie/lizardnihal.json')
          ],

        ),
      ),
    );
  }
}