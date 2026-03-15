import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'MDC 104',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final List<String> products = [
    "Bolso elegante",
    "Zapatos deportivos",
    "Camisa casual",
    "Pantalón formal"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Tienda Flutter"),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                "Menú",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Carrito"),
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {

          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text(products[index]),
            ),
          );
        },
      ),
    );
  }
}