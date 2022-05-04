import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class addtocart extends StatefulWidget {
  final Item catalog;
  const addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<addtocart> createState() => _addtocartState();
}

class _addtocartState extends State<addtocart> {
  final _cart = Cartmodel();
  @override
  Widget build(BuildContext context) {
    bool isincart = _cart.Items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isincart) {
          isincart = isincart.toggle();
          final _catalog = CatalogModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
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
