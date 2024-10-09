import 'package:flutter/material.dart';

class AppColors {
  // Colores principales
  static const Color primaryColor = Color(0xFF393333); // Marrón oscuro
  static const Color secondaryColor = Color(0xFFF7E2C9); // Beige claro

  // Métodos para obtener colores dinámicamente según el tema
  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? primaryColor
        : secondaryColor;
  }

  static Color getSecondaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? primaryColor // Usar marrón oscuro en modo oscuro
        : secondaryColor; // Usar beige claro en modo claro
  }

  static Color getButtonText(BuildContext context) {
    // Para el texto del botón, siempre usamos beige (secondaryColor)
    return AppColors.secondaryColor;
  }

  static Color getButtonColor(BuildContext context) {
    return primaryColor; // Marrón oscuro como color del botón por defecto
  }

  static Color getTextColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? secondaryColor // Beige claro para textos en modo oscuro
        : primaryColor; // Marrón oscuro para textos en modo claro
  }
}
