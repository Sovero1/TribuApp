import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_in_controller.dart';
import '../../components/Custom_Button.dart';
import 'package:tribu_app/configs/colors.dart';

class SignInPage extends StatelessWidget {
  SignInController control = Get.put(SignInController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo y título
          Image.asset(
            'assets/img/adaptive_icon_foreground.png',
            height: 120.0,
          ),
          SizedBox(height: 15),
          Text(
            'Iniciar sesion',
            style: TextStyle(
              fontFamily: 'Titulo',
              fontSize: 22,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 15),
          // Campo de Código
          TextField(
            controller: control.txtUsuario,
            decoration: InputDecoration(
              labelText: 'CÓDIGO',
              labelStyle:
                  TextStyle(fontFamily: 'Texto', color: Color(0xFF393333)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
          SizedBox(height: 15),
          // Campo de Contraseña
          TextField(
            controller: control.txtContrasenia,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'CONTRASEÑA',
              labelStyle:
                  TextStyle(fontFamily: 'Texto', color: Color(0xFF393333)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
          Obx(() {
            return (control.mensaje.value == '')
                ? SizedBox(height: 10)
                : Column(
                    children: [
                      SizedBox(height: 5),
                      Text(
                        control.mensaje.value,
                        style: TextStyle(
                          color: control.mensaje.value.startsWith('Success')
                              ? Colors.green
                              : Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  );
          }),
          SizedBox(height: 15),

          CustomButton(
            title: 'Ingresa',
            onPressed: () {
              control.login(context);
            },
          ),
          SizedBox(height: 15),

          CustomButton(
            title: 'Crear cuenta',
            onPressed: () {
              Navigator.of(context).pushNamed('/sign-up');
            },
            isOutlined: true,
          ),
          SizedBox(height: 10),

          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/reset');
            },
            child: Text(
              '¿Olvidaste tu contraseña?',
              style: TextStyle(
                fontFamily: 'Texto',
                color: AppColors.primaryColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: null,
        body: _buildBody(context),
        backgroundColor: AppColors.secondaryColor, // Color de fondo beige
      ),
    );
  }
}
