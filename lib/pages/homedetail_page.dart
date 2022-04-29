import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';

class homedetailpage extends StatelessWidget {
  final Item catalog;
  const homedetailpage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      body: SafeArea(
        child: Column(
          children: [
            Image.network(catalog.image),
          ],
        ).p16(),
      ),
    );
  }
}
