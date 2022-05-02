import 'catalog.dart';

class cartmodel {
  //catalog field
  late CatalogModel _catalog;

  //collection iof ids = store ids of eachj item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

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
