// lib/pages/login_screen.dart
import 'package:flutter/material.dart';
import 'package:tribu_app/pages/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text;
                String password = _passwordController.text;
                
                // Aquí puedes agregar la lógica de validación del usuario.
    if (username.isNotEmpty && password.isNotEmpty) {
      // Navegar a la pantalla de inicio.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      // Mostrar un mensaje de error si los campos están vacíos.
      print('Por favor, ingresa tu nombre de usuario y contraseña.');
    }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
