import 'package:flutter/material.dart';

class PostearPage extends StatelessWidget {
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

  Widget _buildPost(BuildContext context, String userName, String career,
      String postText, String imageUrl) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img/user_profile.png'),
                  radius: 25.0,
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      career,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(postText),
            SizedBox(height: 10.0),
            Image.asset(imageUrl),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.chat_bubble_outline),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
