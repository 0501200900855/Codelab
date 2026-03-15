import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'MDC 103',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final List<String> items = [
    "Bolso",
    "Zapatos",
    "Camisa",
    "Pantalón",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tienda"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: items.map((item) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.store),
              title: Text(item),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}