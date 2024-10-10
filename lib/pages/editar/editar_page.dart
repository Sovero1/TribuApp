import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/pages/editar/editar_controller.dart';
import 'package:tribu_app/configs/colors.dart';
import '../../components/Custom_Button.dart';

class EditarPage extends StatelessWidget {
  EditarController control = Get.put(EditarController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: control.txtCodigo,
                decoration: InputDecoration(
                  labelText: 'CODIGO',
                  labelStyle:
                      TextStyle(fontFamily: 'Texto', color: Color(0xFF393333)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
              SizedBox(height: 15),

              CustomButton(
                title: 'Guardar',
                onPressed: () {
                  print('Se guardaron los cambios');
                  control.editAccount(context);
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}