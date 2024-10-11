import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tribu_app/configs/colors.dart';
import 'buscar_controller.dart';
import 'package:tribu_app/pages/buscar_materiales/buscar_materiales_page.dart';
import 'package:tribu_app/pages/buscar_profesores/buscar_profesores_page.dart';

class BuscarPage extends StatelessWidget {
  final BuscarController controller = Get.put(BuscarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        title: Text(
          ' Buscar',
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (value) => controller.buscar(value),
                decoration: InputDecoration(
                  hintText: 'Carrera / Curso / Profesor / Material',
                  hintStyle: TextStyle(color: AppColors.primaryColor.withOpacity(0.5)),
                  prefixIcon: Icon(Icons.search, color: AppColors.primaryColor),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Encuentra información de tus profesores, materiales, carreras y cursos.',
                style: TextStyle(
                  fontFamily: 'Texto',
                  fontSize: 16.0,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BuscarProfesoresPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Buscar Profesor',
                  style: TextStyle(
                    fontFamily: 'Titulo',
                    fontSize: 18,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BuscarMaterialesPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Buscar Materiales',
                  style: TextStyle(
                    fontFamily: 'Titulo',
                    fontSize: 18,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    itemCount: controller.resultados.length,
                    itemBuilder: (context, index) {
                      final resultado = controller.resultados[index];
                      return ListTile(
                        leading:
                            Icon(Icons.search, color: AppColors.primaryColor),
                        title: Text(
                          resultado,
                          style: TextStyle(
                            fontFamily: 'Texto',
                            fontSize: 16,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        onTap: () {
                          // Acción al seleccionar un resultado (por ejemplo, mostrar detalles)
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
