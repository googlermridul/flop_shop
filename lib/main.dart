import 'package:flop_shop/screens/product_detail_screen.dart';
import 'package:flop_shop/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlopShop',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: "Goldman",
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
      },
    );
  }
}
