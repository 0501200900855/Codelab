import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MDC 102',
      home: HomePage(),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class HomePage extends StatelessWidget {

  final List<Product> products = [
    Product("Bolso", 50),
    Product("Zapatos", 80),
    Product("Camisa", 30),
    Product("Pantalón", 60),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Productos"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {

          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text(products[index].name),
              subtitle: Text("\$${products[index].price}"),
            ),
          );
        },
      ),
    );
  }
}