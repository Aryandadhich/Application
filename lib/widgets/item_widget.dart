import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:meta/meta.dart';

class ItemWidget extends StatefulWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${widget.item.name} pressed");
        },
        leading: Image.network(widget.item.image),
        title: Text(widget.item.name),
        subtitle: Text(widget.item.desc),
        trailing: Text(
          "\$${widget.item.price}",
          textScaleFactor: 1.5,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
