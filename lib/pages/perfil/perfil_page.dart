import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'perfil_controller.dart';
import '../../components/custom_button.dart';

class PerfilPage extends StatelessWidget {
  final PerfilController control = Get.put(PerfilController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Removes back button
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
              // Notification action
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Stack(
                  alignment: Alignment
                      .bottomRight, 
                  children: [
                    CircleAvatar(
                      radius: 90,
                      backgroundImage:
                          AssetImage('assets/img/splash/splash_icon_dark.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/editar');
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 24,
                          child: Icon(
                            Icons.add_a_photo,
                            color: AppColors.secondaryColor,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Javier Diaz Guzmán',
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
                        '  Ingeniería Industrial',
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
                        '  20224857',
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
                        '  Universidad de Lima',
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
                    Icon(Icons.phone, color: AppColors.primaryColor),
                    SizedBox(width: 10),
                    Text(
                      '985663945',
                      style: TextStyle(
                        fontFamily: 'Texto',
                        fontSize: 20,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Divider(color: AppColors.primaryColor, thickness: 2),
                SizedBox(height: 50),
                Center(
                  child: SizedBox(
                    width: 140,
                    child: CustomButton(
                      title: 'Editar',
                      onPressed: () {
                        Navigator.of(context).pushNamed('/editar');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
