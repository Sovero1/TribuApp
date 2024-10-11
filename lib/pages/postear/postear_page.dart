import 'package:flutter/material.dart';
import 'package:tribu_app/configs/colors.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'postear_controller.dart';

class PostearPage extends StatelessWidget {
  final PostearController controller = Get.put(PostearController());

  // Lista de publicaciones de ejemplo
  final List<Map<String, String>> examplePosts = [
    {
      'name': 'Javier Diaz Guzmán',
      'career': 'Ingeniería Industrial',
      'text': 'Primer día de clases de tercer ciclo, ¿qué profesores me recomiendan? 😅',
      'image': 'assets/img/sample-post-image.png',
    },
    {
      'name': 'Ana María Torres',
      'career': 'Ingeniería de Sistemas',
      'text': '¿Alguien tiene material de estudio para algoritmos?',
      'image': 'assets/img/sample-post-image.png',
    },
    {
      'name': 'Carlos Pérez',
      'career': 'Administración de Empresas',
      'text': 'Tips para el primer parcial de Contabilidad II.',
      'image': 'assets/img/sample-post-image.png',
    },
    {
      'name': 'Lucía Ramos',
      'career': 'Medicina',
      'text': 'Recomendaciones para los laboratorios de Anatomía.',
      'image': 'assets/img/sample-post-image.png',
    },
    {
      'name': 'Miguel Fernández',
      'career': 'Ingeniería Civil',
      'text': 'Material para el curso de Resistencia de Materiales.',
      'image': 'assets/img/sample-post-image.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barra de escritura de post
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img/user_profile.png'),
                  radius: 25.0,
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '¿Qué quieres compartir hoy?',
                      suffixIcon: Icon(Icons.edit),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            // Fila de opciones para subir archivos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildOptionButton('PPT'),
                _buildOptionButton('PDF'),
                _buildOptionButton('Excel'),
                _buildOptionButton('Imagen'),
                _buildOptionButton('Actividad'),
              ],
            ),
            SizedBox(height: 15.0),
            // Post del usuario
            Expanded(
              child: ListView(
                children: [
                  _buildPost(
                    context,
                    'Javier Diaz Guzmán',
                    'Ingeniería Industrial',
                    'Primer día de clases de tercer ciclo, ¿qué profesores me recomiendan? 👌',
                    'assets/img/sample_post_image.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF7E2C9), // Color de fondo beige
    );
  }

  Widget _buildOptionButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Acción para la opción
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[200], // Color del botón actualizado
        foregroundColor: Colors.black, // Color del texto actualizado
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildPostCard({
    required String name,
    required String career,
    required String text,
    required String image,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white.withOpacity(0.8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Titulo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            Text(
              career,
              style: TextStyle(
                fontFamily: 'Texto',
                fontSize: 14,
                color: AppColors.primaryColor.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Texto',
                fontSize: 16,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border, color: AppColors.primaryColor),
                  onPressed: () {
                    // Acción para dar like
                  },
                ),
                IconButton(
                  icon: Icon(Icons.comment, color: AppColors.primaryColor),
                  onPressed: () {
                    // Acción para comentar
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(String label, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () {
        // Acción para cada opción de archivo
      },
      icon: Icon(icon, color: AppColors.primaryColor),
      label: Text(
        label,
        style: TextStyle(
          fontFamily: 'Titulo',
          fontSize: 14,
          color: AppColors.primaryColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 2,
      ),
    );
  }
}
