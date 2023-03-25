import 'package:flop_shop/screens/orders_screen.dart';
import 'package:flop_shop/screens/user_products_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text(
              "Hello Friend",
              style: TextStyle(fontFamily: "Goldman"),
            ),
            automaticallyImplyLeading: false,
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text(
              "Shop",
              style: TextStyle(fontFamily: "Goldman"),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment_outlined),
            title: Text(
              "Orders",
              style: TextStyle(fontFamily: "Goldman"),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit_note_rounded),
            title: Text(
              "Manage Products",
              style: TextStyle(fontFamily: "Goldman"),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
