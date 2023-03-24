import 'package:flop_shop/providers/cart.dart';
import 'package:flop_shop/providers/order.dart';
import 'package:flop_shop/screens/cart_screen.dart';
import 'package:flop_shop/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flop_shop/providers/products.dart';
import 'package:flop_shop/screens/product_detail_screen.dart';
import 'package:flop_shop/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => Orders(),
        ),
      ],
      // value: Products(),
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
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
