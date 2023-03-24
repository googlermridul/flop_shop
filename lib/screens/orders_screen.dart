import 'package:flop_shop/providers/order.dart' show Orders;
import 'package:flop_shop/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Orders",
          style: TextStyle(fontFamily: "Goldman"),
        ),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (_, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}
