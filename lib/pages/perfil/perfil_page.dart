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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/img/profile_placeholder.png'),
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
                SizedBox(height: 30),
                
                Divider(color: AppColors.primaryColor, thickness: 2), 
                Text(
                  'Ingeniería Industrial',
                  style: TextStyle(
                    fontFamily: 'Texto',
                    fontSize: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
                Divider(color: AppColors.primaryColor, thickness: 2), 
                SizedBox(height: 10),

                Text(
                  '20224857',
                  style: TextStyle(
                    fontFamily: 'Texto',
                    fontSize: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
                Divider(color: AppColors.primaryColor, thickness: 2), 
                SizedBox(height: 10),

                Text(
                  'Universidad de Lima',
                  style: TextStyle(
                    fontFamily: 'Texto',
                    fontSize: 20,
                    color: AppColors.primaryColor,
                  ),
                ),    
                Divider(color: AppColors.primaryColor, thickness: 2),             
                SizedBox(height: 10),
                
                Row(
                  children: [
                    Icon(Icons.phone, color: AppColors.primaryColor),
                    SizedBox(width: 10),
                    Text(
                      '98566394',
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
            
                SizedBox(
                  width: 200,
                  child: CustomButton(
                    title: 'Editar',
                    onPressed: () {
                      Navigator.pushNamed(context, '/editar');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }
}