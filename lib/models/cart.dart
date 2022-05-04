import 'package:flutter_application_1/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog.dart';

class Cartmodel {
  //catalog field
  late CatalogModel _catalog;

  //collection iof ids = store ids of eachj item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  get itemids => null;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get Items => _itemIds.map((id) => _catalog.getbyid(id)).toList();

  //get total prize
  num get totalprice =>
      Items.fold(0, (total, current) => total + current.price);

  //add item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}
