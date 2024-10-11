import 'package:flutter/material.dart';
import 'package:tribu_app/configs/colors.dart';
import 'package:tribu_app/pages/buscar_materiales/buscar_materiales_page.dart';
import 'package:tribu_app/pages/buscar_profesores/buscar_profesores_page.dart'; // Asegúrate de tener esta importación

class BuscarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'CARRERA / CURSO / PROFESOR',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Encuentra información de tus profesores y material de estudio.',
              style: TextStyle(
                fontFamily: 'Texto',
                fontSize: 16.0,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Navegar a la página BuscarProfesorPage
                Navigator.pushNamed(context, '/buscar-profesores');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor, // Color personalizado
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'Buscar Profesor',
                style: TextStyle(
                  fontFamily: 'Titulo',
                  fontSize: 18,
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navegar a la página BuscarMaterialesPage
                Navigator.pushNamed(context, '/buscar-materiales');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor, // Color personalizado
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'Buscar Materiales',
                style: TextStyle(
                  fontFamily: 'Titulo',
                  fontSize: 18,
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.secondaryColor, // Color de fondo
    );
  }
}
