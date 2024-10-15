import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'perfil_controller.dart';

class PerfilPage extends StatelessWidget {
  final PerfilController control = Get.put(PerfilController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Tribu',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontFamily: 'Titulo',
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: AppColors.primaryColor),
            onPressed: () {
              // Acción de notificaciones
            },
          ),
          IconButton(
            icon: Icon(Icons.person_outline, color: AppColors.primaryColor),
            onPressed: () {
              Navigator.of(context).pushNamed('/perfil');
            },
          ),
        ],
      ),
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Obx(() {
                if (control.alumno.value == null) {
                  return CircularProgressIndicator();
                } else {
                  // Mostrar la información del alumno que inició sesión
                  final alumno = control.alumno.value!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40),
                      CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage(
                            'assets/img/splash/splash_icon_dark.png'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        alumno.nombre,
                        style: TextStyle(
                          fontFamily: 'Titulo',
                          fontSize: 26,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: 40),
                      Divider(color: AppColors.primaryColor, thickness: 2),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '  ${alumno.carrera}',
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: AppColors.primaryColor, thickness: 2),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '  ${alumno.codigo}',
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: AppColors.primaryColor, thickness: 2),
                      // Organizar la información en filas
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Para espaciar los elementos
                        children: [
                          Expanded(
                            child: Text(
                              'Email:',
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${alumno.correo}', // Nueva propiedad
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: AppColors.primaryColor, thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Para espaciar los elementos
                        children: [
                          Expanded(
                            child: Text(
                              'Teléfono:',
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${alumno.celular}', // Nueva propiedad
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: AppColors.primaryColor, thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Para espaciar los elementos
                        children: [
                          Expanded(
                            child: Text(
                              'Ciclo :',
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${alumno.ciclo}',
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 20,
                                color: AppColors.primaryColor,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: AppColors.primaryColor, thickness: 2),
                    ],
                  );
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}
