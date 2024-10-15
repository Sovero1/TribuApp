import 'package:flutter/material.dart';
import 'package:tribu_app/pages/inicio/inicio_page.dart';
import 'package:tribu_app/pages/home/home_page.dart';
import 'package:tribu_app/pages/sign_in/sign_in_page.dart';
import 'package:tribu_app/pages/sign_up/sign_up_page.dart';
import 'package:tribu_app/pages/reset/reset_page.dart';
import 'package:tribu_app/pages/perfil/perfil_page.dart';
import 'package:tribu_app/pages/cursos/cursos_page.dart';
import 'package:tribu_app/pages/editar/editar_page.dart';
import 'package:tribu_app/pages/postear/postear_page.dart';
import 'package:tribu_app/pages/config/config_page.dart';
import 'package:tribu_app/pages/change_password/change_password_page.dart';
import 'package:tribu_app/configs/app_theme.dart'; // Importa tu archivo de temas
import 'package:tribu_app/pages/visualizacion/visualizacion_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tribu',
      theme: AppTheme.lightTheme(), // Usa el tema claro desde AppTheme
      darkTheme: AppTheme.darkTheme(), // Usa el tema oscuro desde AppTheme
      themeMode: ThemeMode.system, // Cambia automáticamente según el sistema
      initialRoute: '/inicio',
      routes: {
        '/home': (context) => HomePage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/reset': (context) => ResetPage(),
        '/inicio': (context) => InicioPage(),
        '/perfil': (context) => PerfilPage(),
        '/cursos': (context) => CursosPage(),
        '/editar': (context) => EditarPage(),
        '/postear': (context) => PostearPage(),
        '/config': (context) => ConfigPage(),
        '/change': (context) => ChangePasswordPage(),
        '/visualizacion': (context) => VisualizacionPage(),
      },
    );
  }
}
