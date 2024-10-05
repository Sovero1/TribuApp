import 'package:tribu_app/configs/colors.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  const LargeButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.backgroundColor,
      this.textColor,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          double.infinity, // Hace que el botón ocupe todo el ancho disponible
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? const Color.fromARGB(255, 255, 255, 255)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(5),
          )),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: textColor ?? AppColors.textColor),
        ),
      ),
    );
  }
}
