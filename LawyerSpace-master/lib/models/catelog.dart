class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Phone",
      des: "A great phone to use",
      price: 100,
      color: "#6C8AB6",
      image: "assets/images/phone2.png",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String des;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.des, this.price, this.color, this.image});
}
