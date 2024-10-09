import 'package:flutter/material.dart';
import '../configs/colors.dart'; // Ruta correcta al archivo colors.dart

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isOutlined;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.getButtonColor(context);
    // Ahora el color del texto será beige (secondaryColor)
    final textColor = AppColors.getSecondaryColor(context);

    return SizedBox(
      width: double.infinity,
      child: isOutlined
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: BorderSide(color: backgroundColor, width: 2),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Titulo',
                  fontSize: 18,
                  color: backgroundColor, // Color del borde y texto en outlined
                ),
              ),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Titulo',
                  fontSize: 18,
                  color:
                      textColor, // Aquí cambiamos el color del texto al beige
                ),
              ),
            ),
    );
  }
}
