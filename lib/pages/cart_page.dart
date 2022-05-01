import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Placeholder().p32().expand(),
            Divider(),
            _carttotal(),
          ],
        ));
  }
}

class _carttotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          "\$9999".text.xl5.color(Colors.red).make(),
        ],
      ),
    );
  }
}
