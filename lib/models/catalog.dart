import "package:flutter_application_1/models/catalog.dart";

class CatalogModel {
  static List<Item> items = [
    Item(
        id: 0,
        name: "hall",
        desc: "Area where someone can wait",
        price: 100,
        area: "20",
        image: "images/logo.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String area;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.area,
      required this.image});

  factory Item.fromMap(
    Map<String, dynamic> map,
  ) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      area: map["area"],
      image: map["image"],
    );
  }

  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "area": area,
        "image": image
      };
}
