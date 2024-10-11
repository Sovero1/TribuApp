import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'buscar_materiales_controller.dart';

class BuscarMaterialesPage extends StatelessWidget {
  final BuscarMaterialesController controller = Get.put(BuscarMaterialesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buscar Materiales',
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
                  hintText: 'Buscar material...',
                  prefixIcon: Icon(Icons.search, color: AppColors.primaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white, // Fondo blanco para el cuadro de texto
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    itemCount: controller.materiales.length,
                    itemBuilder: (context, index) {
                      final material = controller.materiales[index];
                      return ListTile(
                        leading: Icon(Icons.file_present, color: AppColors.primaryColor),
                        title: Text(
                          material,
                          style: TextStyle(
                            fontFamily: 'Texto',
                            fontSize: 16,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        onTap: () {
                          // Acción al seleccionar un material (puede ser mostrar detalles)
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
