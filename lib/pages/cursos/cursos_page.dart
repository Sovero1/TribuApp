import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'cursos_controller.dart';

class CursosPage extends StatelessWidget {
  final CursosController control = Get.put(CursosController());

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
              // Action for notifications
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
      body: SafeArea(
        child: SingleChildScrollView(
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
              _buildCourseTile(
                context,
                'Programación Orientada a Objetos   |   4',
                'Profesor: Pablo Rojas',
                '  Lunes 3:00 - 6:00 pm\n  Jueves 10:00 am - 12:00 pm',
                '   Lunes 12:00 pm - 1:00 pm',
                [
                  'EV1-2018-2',
                  'Ejemplo-Herencia',
                  'EV2-2016-1',
                  'Ejemplos-ClasesAbstrac',
                  'ClaseIntroduccionPoo.pdf'
                ],
              ),
              Divider(color: AppColors.primaryColor, thickness: 2),
              _buildCourseTile(
                context,
                'Algoritmos   |   3',
                'Profesor: Carla López',
                '  Martes 2:00 - 5:00 pm\n   Viernes 9:00 am - 11:00 am',
                '   Miércoles 11:00 am - 12:00 pm',
                [
                  'EV1-2019-1',
                  'Ejemplo-Algoritmos-Básicos',
                  'ClaseIntroduccionAlgoritmos.pdf'
                ],
              ),
              Divider(color: AppColors.primaryColor, thickness: 2),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }

  Widget _buildCourseTile(
    BuildContext context,
    String courseTitle,
    String professor,
    String schedule,
    String advisory,
    List<String> materials,
  ) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        title: Container(
          color: AppColors.secondaryColor,
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          child: Text(
            courseTitle,
            style: TextStyle(
              fontFamily: 'Titulo',
              fontSize: 18,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        children: [
          Divider(color: AppColors.primaryColor, thickness: 1),
          Container(
            color: AppColors.secondaryColor,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profesor: $professor',
                    style: TextStyle(
                      fontFamily: 'Texto',
                      fontSize: 18,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Horario:\n $schedule',
                    style: TextStyle(
                      fontFamily: 'Texto',
                      fontSize: 18,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Asesoría:\n $advisory',
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
                      ...materials.map((material) => ListTile(
                            leading: Icon(Icons.file_present,
                                color: AppColors.primaryColor),
                            title: Text(
                              material,
                              style: TextStyle(
                                fontFamily: 'Texto',
                                fontSize: 16,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
