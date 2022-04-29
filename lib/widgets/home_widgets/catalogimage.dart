import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogimage extends StatelessWidget {
  final String image;

  const catalogimage({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p12.color(MyTheme.creamcolor).make().p16().w40(context);
  }
}
