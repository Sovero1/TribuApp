import 'package:flutter/material.dart';
import '../configs/colors.dart';

class Tag extends StatelessWidget {
  final String text;
  final Color color;

  // Constructor del widget Tag que recibe el texto
  const Tag({
    Key? key,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), // Bordes redondeados
        border: Border.all(
          color: AppColors.primaryColor, // Color del borde
          width: 2, // Grosor del borde
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          border: InputBorder.none, // Sin borde adicional
        ),
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
