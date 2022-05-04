import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
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
    final _cart = Cartmodel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalprice}"
              .text
              .xl4
              .color(context.theme.accentColor)
              .make(),
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

class _cartlist extends StatefulWidget {
  @override
  State<_cartlist> createState() => _cartlistState();
}

class _cartlistState extends State<_cartlist> {
  final _cart = Cartmodel();
  @override
  Widget build(BuildContext context) {
    return _cart.Items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.Items.length,
            itemBuilder: ((context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        _cart.remove(_cart.Items[index]);
                        setState(() {});
                      }),
                  title: _cart.Items[index].name.text.make(),
                )));
  }
}
