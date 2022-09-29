import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AnimatedExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class AnimatedExample extends StatefulWidget {
  @override
  _AnimatedExampleState createState() => _AnimatedExampleState();
}

class _AnimatedExampleState extends State with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isAnimating = false;

  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            changeIcon();
          },
          child: AnimatedIcon(
            progress: _animationController,
            icon: AnimatedIcons.add_event,
            size: 200,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }

  void changeIcon() {
    setState(() {
      isAnimating = !isAnimating;
      isAnimating
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
