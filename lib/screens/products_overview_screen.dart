import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

enum FilterOptions {
  favorites,
  all,
}

class ProductsOverviewScreen extends StatefulWidget {
  ProductsOverviewScreen({Key key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FlopShop",
          style: TextStyle(fontFamily: "Goldman"),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text(
                  "Only Favorites",
                  style: TextStyle(fontFamily: "Goldman"),
                ),
                value: FilterOptions.favorites,
              ),
              PopupMenuItem(
                child: Text(
                  "Show All",
                  style: TextStyle(fontFamily: "Goldman"),
                ),
                value: FilterOptions.all,
              ),
            ],
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
