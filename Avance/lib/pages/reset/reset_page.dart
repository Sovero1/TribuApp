import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reset_controller.dart';

class ResetPage extends StatelessWidget {
  ResetController control = Get.put(ResetController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(child: Text('Restablecer Contraseña'));
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
