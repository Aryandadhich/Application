import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var a = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my first application $a"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
