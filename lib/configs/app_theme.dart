import 'package:flutter/material.dart';
import 'colors.dart'; // Ruta correcta para tu archivo de colores

class AppTheme {
  // Tema claro
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.secondaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.secondaryColor,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColors.primaryColor),
      ),
    );
  }

  // Tema oscuro
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.secondaryColor,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColors.secondaryColor),
      ),
    );
  }
}
