import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'buscar_profesores_controller.dart';

class BuscarProfesoresPage extends StatelessWidget {
  final BuscarProfesoresController controller = Get.put(BuscarProfesoresController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buscar Profesores',
          style: TextStyle(
            fontFamily: 'Titulo',
            fontSize: 26,
            color: AppColors.primaryColor,
          ),
        ),
        backgroundColor: AppColors.secondaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => controller.buscar(value),
                decoration: InputDecoration(
                  hintText: 'Buscar profesor por nombre...',
                  prefixIcon: Icon(Icons.search, color: AppColors.primaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.primaryColor),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    itemCount: controller.profesores.length,
                    itemBuilder: (context, index) {
                      final profesor = controller.profesores[index];
                      return ListTile(
                        leading: Icon(Icons.person, color: AppColors.primaryColor),
                        title: Text(
                          profesor,
                          style: TextStyle(
                            fontFamily: 'Texto',
                            fontSize: 16,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        onTap: () {
                          // Acción al seleccionar un profesor (por ejemplo, mostrar detalles)
                        },
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.secondaryColor,
    );
  }
}
