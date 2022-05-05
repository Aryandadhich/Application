// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

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
            _cartlist().p32().expand(),
            Divider(),
            _carttotal(),
          ],
        ));
  }
}

class _carttotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Cartmodel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
              notifications: {},
              mutations: {RemoveMutation},
              builder: (context, _, _0) {
                return "\$${_cart.totalprice}"
                    .text
                    .xl4
                    .color(context.theme.accentColor)
                    .make();
              }),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          "out of stock and also from your okat".text.make(),
                    ));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  child: "Buy".text.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _cartlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final Cartmodel _cart = (VxState.store as MyStore).cart;
    return _cart.Items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.Items.length,
            itemBuilder: ((context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () => RemoveMutation(_cart.Items[index]),
                  ),
                  title: _cart.Items[index].name.text.make(),
                )));
  }
}
