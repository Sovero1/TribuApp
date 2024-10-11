import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'editar_controller.dart';
import '../../components/custom_button.dart';
import '../../components/desplegable_ciclo.dart';
import '../../components/desplegable_carrera.dart';

class EditarPage extends StatelessWidget {
  final EditarController control = Get.put(EditarController());

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
                SizedBox(height: 20),
                  TextField(
                        controller: control.txtCodigo,
                        decoration: InputDecoration(
                        labelText: 'CODIGO',
                        labelStyle: TextStyle(
                            fontFamily: 'Texto',
                            color: AppColors.primaryColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                    controller: control.txtNombre,
                    decoration: InputDecoration(
                    labelText: 'NOMBRE',
                    labelStyle: TextStyle(
                        fontFamily: 'Texto',
                        color: AppColors.primaryColor,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                ),
                SizedBox(height: 20),
                TextField(
                    controller: control.txtCorreo,
                    decoration: InputDecoration(
                    labelText: 'CORREO',
                    labelStyle: TextStyle(
                        fontFamily: 'Texto',
                        color: AppColors.primaryColor,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                ),
                SizedBox(height: 20),
                TextField(
                    controller: control.txtCelular,
                    decoration: InputDecoration(
                    labelText: 'CELULAR',
                    labelStyle: TextStyle(
                        fontFamily: 'Texto',
                        color: AppColors.primaryColor,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                ),
                SizedBox(height: 20),
                CicloDropdown(
                    selectedCiclo: control.selectedCiclo,
                    onChanged: (String? newValue) {
                    control.selectedCiclo = newValue!;
                    },
                ),
                SizedBox(height: 20),                
                CarreraDropdown(
                    selectedCarrera: control.selectedCarrera,
                    onChanged: (String? newValue) {
                    control.selectedCarrera = newValue!;
                    },
                ),
                SizedBox(height: 20),
                Row(
                    children: [
                        Icon(Icons.add_a_photo, color: AppColors.primaryColor),
                        SizedBox(width: 10),
                        Text(
                            'FOTO',
                            style: TextStyle(
                            fontFamily: 'Texto',
                            color: AppColors.primaryColor,
                            ),
                        ),
                    ],
                ),
                SizedBox(height: 200),
                CustomButton(
                    title: 'Guardar',
                    onPressed: () {
                    control.editAccount(context);
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}