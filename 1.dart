import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MDC 101',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [

            Icon(Icons.account_circle, size: 100),

            SizedBox(height: 20),

            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Usuario",
              ),
            ),

            SizedBox(height: 12),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Contraseña",
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text("Cancelar"),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text("Siguiente"),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}