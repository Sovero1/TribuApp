import 'package:flutter/material.dart';
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
      'text':
          'Primer día de clases de tercer ciclo, ¿qué profesores me recomiendan? 😅',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/sample-profile-image.png'),
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        onChanged: (value) => controller.updatePostText(value),
                        decoration: InputDecoration(
                          hintText: '¿Qué quieres compartir hoy?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon:
                              Icon(Icons.edit, color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildOptionButton('PPT', Icons.picture_as_pdf),
                      SizedBox(width: 10),
                      _buildOptionButton('PDF', Icons.picture_as_pdf),
                      SizedBox(width: 10),
                      _buildOptionButton('Excel', Icons.table_chart),
                      SizedBox(width: 10),
                      _buildOptionButton('Imagen', Icons.image),
                      SizedBox(width: 10),
                      _buildOptionButton('Actividad', Icons.event),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: examplePosts.length,
                  itemBuilder: (context, index) {
                    final post = examplePosts[index];
                    return _buildPostCard(
                      name: post['name']!,
                      career: post['career']!,
                      text: post['text']!,
                      image: post['image']!,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
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
      color: Colors.white,
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
                  icon: Icon(Icons.favorite_border,
                      color: AppColors.primaryColor),
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
      icon: Icon(icon,
          color:
              AppColors.secondaryColor), // Cambiado a AppColors.secondaryColor
      label: Text(
        label,
        style: TextStyle(
          fontFamily: 'Titulo',
          fontSize: 14,
          color:
              AppColors.secondaryColor, // Cambiado a AppColors.secondaryColor
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor:
            AppColors.primaryColor, // Cambiado a AppColors.primaryColor
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 2,
      ),
    );
  }
}
