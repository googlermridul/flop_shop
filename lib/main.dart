import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flop_shop/providers/products.dart';
import 'package:flop_shop/screens/product_detail_screen.dart';
import 'package:flop_shop/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
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
      ),
    );
  }
}
