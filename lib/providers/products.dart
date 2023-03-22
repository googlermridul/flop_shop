import 'package:flop_shop/providers/product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Airpods Pro 2nd Generation',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP880/sp880-airpods-Pro-2nd-gen.png',
    ),
    Product(
      id: 'p2',
      title: 'Iphone 14 Pro Max Deep Purple',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://www.gta.net/media/2731/iphone14-pro-max-deep-purple-pure.png',
    ),
    Product(
      id: 'p3',
      title: 'Apple Watch Series 8',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://inventstore.in/wp-content/uploads/2022/09/Watch-S8-Silver.png',
    ),
    Product(
      id: 'p4',
      title: 'Pixel & Pro Snow White',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://mobilecity-live.s3.ap-southeast-2.amazonaws.com/wp-content/uploads/2023/02/09185033/unnamed.png',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
