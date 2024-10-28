import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'perfil_controller.dart';
import '../../components/Custom_Button.dart';

class PerfilPage extends StatelessWidget {
  final PerfilController control = Get.put(PerfilController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: Text(
            'Tribu',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'Titulo',
              fontSize: 24,
            ),
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
              padding: const EdgeInsets.all(16.0),
              child: Obx(() {
                if (control.alumno.value == null) {
                  return CircularProgressIndicator();
                } else {
                  final alumno = control.alumno.value!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 90,
                            backgroundImage: AssetImage(
                                'assets/img/splash/splash_icon_dark.png'),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 15,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/editar');
                              },
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        alumno.nombre,
                        style: const TextStyle(
                          fontFamily: 'Titulo',
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 40),
                      _buildDivider(),
                      _buildInfoRow('Carrera', alumno.carrera),
                      _buildDivider(),
                      _buildInfoRow('Código', alumno.codigo),
                      _buildDivider(),
                      _buildInfoRow('Correo', alumno.correo),
                      _buildDivider(),
                      _buildInfoRow('Universidad', 'Universidad de Lima'),
                      _buildDivider(),
                      _buildInfoRow('Teléfono', alumno.celular),
                      _buildDivider(),
                      const SizedBox(height: 80),

                      CustomButton(
                        title: 'Editar',
                        onPressed: () {
                          Navigator.of(context).pushNamed('/editar');
                        },
                        isOutlined: false,
                      ),
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

  Widget _buildInfoRow(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Texto',
              fontSize: 18,
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            content,
            style: const TextStyle(
              fontFamily: 'Texto',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  // Widget para construir el divisor
  Widget _buildDivider() {
    return Divider(
      color: AppColors.primaryColor,
      thickness: 1,
      height: 10,
    );
  }
}