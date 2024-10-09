import 'package:flutter/material.dart';
import '../configs/colors.dart';

class Tag extends StatelessWidget {
  final String text;
  final Color color;

  // Constructor del widget Tag que recibe el texto
  const Tag({
    Key? key,
    required this.text,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 9,
        right: 9,
        top: 4,
        bottom: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors
            .primaryColor, // Asegúrate de definir AppColors.primaryColor
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color // Puedes ajustar el color del texto si es necesario
            ),
      ),
    );
  }
}
