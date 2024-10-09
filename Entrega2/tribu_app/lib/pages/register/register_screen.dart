import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(236, 180, 127, 1),
                Color.fromRGBO(243, 173, 124, 1),
              ])),
              width: double.infinity,
              height: double.infinity,
            ),
            SafeArea( //metemos el container dentro de un widget y cambiamos por safearea para que se adapte a caulquier dispositivo
              child: Container(
                padding: const EdgeInsets.only( top: 40),
                width: double.infinity,
        
               child : Column(
                children :[ 
                  Icon(
                  Icons.not_started,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
                SizedBox(height: 10),
                Text('CREAR CUENTA', style: TextStyle(
                  fontSize: 24,color: Colors.black,
                ),),
                
                 Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(30),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      )
                    ]
                  ),
                child: Column(
                  children: [
                    Text('Codigo',style:Theme.of(context).textTheme.labelMedium),
                    SizedBox(height: 5,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        )
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child:TextField(
                                    
                                    decoration: InputDecoration( border: InputBorder.none, labelText: ''),
                                  ),
                    )

                  ],
                )
                ),
                SizedBox(height: 50),
                  Text('No tienes cuenta? Registrate',
                  style: TextStyle(fontSize: 18),),

              ]
            )

                ],
                ),
              ),
            ),
            
           
          ],
        ),
      ),
    ); //scaffold es el contener basico de todos los widgets
  }
  
}