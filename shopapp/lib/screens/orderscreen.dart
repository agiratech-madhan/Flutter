import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/orders.dart' show Orders;
import 'package:shopapp/widgets/app_drawer.dart';
import '../widgets/orderitem.dart';

class OrderScreen extends StatelessWidget {
  // static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Your orders"),
        ),
        drawer: AppDrawer(),
        body: ListView.builder(
            itemCount: orderData.orders.length,
            itemBuilder: (context, i) =>
                OrderItem(order: orderData.orders[i])));
  }
}
