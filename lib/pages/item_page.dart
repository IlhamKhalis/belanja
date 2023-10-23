import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: itemArgs.name,
              child: Image.asset(itemArgs.image, height: 200),
            ),
            Text('Item Name: ${itemArgs.name}'),
            Text('Item Price: ${itemArgs.price.toString()}'),
            Text('Stock : ${itemArgs.stock.toString()}'),
            Text('Rating : ${itemArgs.rating.toString()}'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Ilham Khalis Putra Agatha - 2141720230'),
        ),
      ),
    );
  }
}