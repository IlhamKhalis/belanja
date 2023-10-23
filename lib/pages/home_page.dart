import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, image: 'gula.jpg', stock: 10, rating: 4.5),
    Item(name: 'Salt', price: 2000, image: 'garam.png', stock: 20, rating: 4.0),
    // Tambahkan lebih banyak item di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoping List'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              child: Column(
                children: [
                  Hero(
                    tag: item.name,
                    child: Image.asset('assets/${item.image}', height: 100),
                  ),
                  Text(item.name),
                  Text('Price: ${item.price.toString()}'),
                  Text('Stock: ${item.stock.toString()}'),
                  Text('Rating: ${item.rating.toString()}'),
                ],
              ),
            ),
          );
        },
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
