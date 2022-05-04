import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class addtocart extends StatelessWidget {
  final Item catalog;
  addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final _cart = Cartmodel();
  @override
  Widget build(BuildContext context) {
    bool isincart = _cart.Items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isincart) {
          isincart = isincart.toggle();
          final _catalog = CatalogModel();
          _cart.catalog = _catalog;
          _cart.add(catalog);
          //setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isincart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
