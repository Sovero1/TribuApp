import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_in_controller.dart';
import '../../components/large_button.dart';

class SignInPage extends StatelessWidget {
  SignInController control = Get.put(SignInController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Iniciar sesion',
                  style: TextStyle(fontFamily: 'Titulo', fontSize: 22),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: control.txtUsuario,
                  decoration: InputDecoration(
                      labelText: 'Codigo',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0)),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: control.txtContrasenia,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0)),
                ),
                Obx(() {
                  return (control.mensaje.value == '')
                      ? SizedBox(
                          height: 10,
                        )
                      : Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(control.mensaje.value)
                          ],
                        );
                }),
                LargeButton(
                  title: 'Entra',
                  onPressed: () {
                    print('Ingresar presionado');
                    control.goHome(context);
                  },
                  textColor: const Color.fromARGB(255, 2, 2, 2),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                LargeButton(
                    title: 'Crear Cuenta',
                    onPressed: () {
                      print('Ingresar Crear Cuenta');
                    }),
                LargeButton(
                    title: '¿Olvidaste tu contraseña?',
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                    onPressed: () {
                      print('Ingresar Reset');
                    })
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: null,
            body: _buildBody(context)));
  }
}
