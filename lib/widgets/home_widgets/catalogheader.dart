import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Catalog App".text.xl4.bold.color(MyTheme.darkbluishcolor).make(),
      "Trending products".text.xl.color(MyTheme.darkbluishcolor).make()
    ]);
  }
}