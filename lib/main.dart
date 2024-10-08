import 'package:flutter/material.dart';
import 'package:tribu_app/pages/inicio/inicio_page.dart';
import 'pages/home/home_page.dart';
import 'pages/sign_in/sign_in_page.dart';
import 'pages/sign_up/sign_up_page.dart';
import 'pages/reset/reset_page.dart';
import 'pages/perfil/perfil_page.dart';
import 'pages/cursos/cursos_page.dart';
import 'pages/config/config_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tribu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Inicia la app con el SplashScreen
      initialRoute: '/inicio',
      routes: {
        '/home': (context) => (Scaffold(
              body: HomePage(),
            )),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/reset': (context) => ResetPage(),
        '/inicio': (context) => InicioPage(),
        '/perfil': (context) => PerfilPage(),
       // '/cursos': (context) => CursosPage(),
      // '/config': (context) => ConfigPage(),
      },
    );
  }
}
