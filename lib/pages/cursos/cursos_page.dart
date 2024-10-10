import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'cursos_controller.dart';

class CursosPage extends StatelessWidget {
  final CursosController control = Get.put(CursosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Ingeniería de Sistemas',
                    style: TextStyle(
                      fontFamily: 'Titulo',
                      fontSize: 26,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    title: Container(
                      color: AppColors.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: Text(
                        'Programación Orientada a Objetos   |   4',
                        style: TextStyle(
                          fontFamily: 'Titulo',
                          fontSize: 18,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                    children: [
                      Divider(color: AppColors.primaryColor, thickness: 1),
                      Container(
                        color: AppColors.secondaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profesor: Pablo Rojas',
                                style: TextStyle(
                                  fontFamily: 'Texto',
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Horario:\n     Lunes 3:00 - 6:00 pm\n     Jueves 10:00 am - 12:00 pm',
                                style: TextStyle(
                                  fontFamily: 'Texto',
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Asesoría:\n      Lunes 12:00 pm - 1:00 pm',
                                style: TextStyle(
                                  fontFamily: 'Texto',
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(height: 20),
                              Divider(color: AppColors.primaryColor, thickness: 1),
                              ExpansionTile(
                                title: Text(
                                  'Materiales de estudio',
                                  style: TextStyle(
                                    fontFamily: 'Texto',
                                    fontSize: 18,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                children: [
                                  Divider(color: AppColors.primaryColor, thickness: 1),
                                  ListTile(
                                    leading: Icon(Icons.file_present, color: AppColors.primaryColor),
                                    title: Text(
                                      'EV1-2018-2',
                                      style: TextStyle(
                                        fontFamily: 'Texto',
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.file_present, color: AppColors.primaryColor),
                                    title: Text(
                                      'Ejemplo-Herencia',
                                      style: TextStyle(
                                        fontFamily: 'Texto',
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.file_present, color: AppColors.primaryColor),
                                    title: Text(
                                      'ClaseIntroduccionPoo.pdf',
                                      style: TextStyle(
                                        fontFamily: 'Texto',
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: AppColors.primaryColor, thickness: 2),

                
                Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    title: Container(
                      color: AppColors.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: Text(
                        'Algoritmos   |   3',
                        style: TextStyle(
                          fontFamily: 'Titulo',
                          fontSize: 18,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                    children: [
                      Divider(color: AppColors.primaryColor, thickness: 1),
                      Container(
                        color: AppColors.secondaryColor, // Fondo del contenido
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profesor: Carla López',
                                style: TextStyle(
                                  fontFamily: 'Texto',
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Horario:\n     Martes 2:00 - 5:00 pm\n     Viernes 9:00 am - 11:00 am',
                                style: TextStyle(
                                  fontFamily: 'Texto',
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Asesoría:\n      Miércoles 11:00 am - 12:00 pm',
                                style: TextStyle(
                                  fontFamily: 'Texto',
                                  fontSize: 18,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(height: 20),
                              Divider(color: AppColors.primaryColor, thickness: 1),
                              ExpansionTile(
                                title: Text(
                                  'Materiales de estudio',
                                  style: TextStyle(
                                    fontFamily: 'Texto',
                                    fontSize: 18,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                                children: [
                                    Divider(color: AppColors.primaryColor, thickness: 1),
                                  ListTile(
                                    leading: Icon(Icons.file_present, color: AppColors.primaryColor),
                                    title: Text(
                                      'EV1-2019-1',
                                      style: TextStyle(
                                        fontFamily: 'Texto',
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.file_present, color: AppColors.primaryColor),
                                    title: Text(
                                      'Ejemplo-Algoritmos-Básicos',
                                      style: TextStyle(
                                        fontFamily: 'Texto',
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.file_present, color: AppColors.primaryColor),
                                    title: Text(
                                      'ClaseIntroduccionAlgoritmos.pdf',
                                      style: TextStyle(
                                        fontFamily: 'Texto',
                                        fontSize: 16,
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: AppColors.primaryColor, thickness: 2),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }
}