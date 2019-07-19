import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _active = !_active;
            });
          },
          child: _active ? Icon(
            IconData(0xeb61, fontFamily: 'iconfont'),
            color: Colors.red,
            size: 50.0
          ): Icon(
            IconData(0xeb61, fontFamily: 'iconfont'),
            color: Colors.green,
            size: 50.0
          ),
        ),
      ),
    );
  }
}

