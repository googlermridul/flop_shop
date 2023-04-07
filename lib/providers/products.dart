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
          'https://www.citypng.com/public/uploads/small/11662630709bkutgtwlwvxrtjk7mcinmilyuky4a01mhyyh4myfygdd5jvsfjb9yahwqoa9dnq1tqc4q3edvsp48zgpwjcjbfkjdq9r0su35dzr.png',
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

  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((element) => element.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((element) => element.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct(Product product) {
    final newProduct = Product(
      id: DateTime.now().toString(),
      title: product.title,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl,
    );
    _items.add(newProduct);
    // _items.insert(0, newProduct);
    notifyListeners();
  }

  void updateProduct(String id, Product newProduct) {
    final index = _items.indexWhere((element) => element.id == id);
    if (index >= 0) {
      _items[index] = newProduct;
      notifyListeners();
    } else {
      print("...");
    }
  }

  void deleteProduct(String id) {
    _items.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
