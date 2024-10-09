import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool isOutlined;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF645749), // Color por defecto
    this.textColor = Colors.white,
    this.isOutlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isOutlined
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
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
                  color: backgroundColor,
                ),
              ),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Titulo',
                  fontSize: 18,
                  color: textColor,
                ),
              ),
            ),
    );
  }
}
