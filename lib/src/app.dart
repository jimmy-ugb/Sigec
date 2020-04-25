//import 'package:aplicacion_01/src/view/recuperarpass.dart';
//import 'package:aplicacion_01/src/view/fechasPagos.dart';
//import 'package:aplicacion_01/src/view/login_admin.dart';
//import 'package:aplicacion_01/src/view/fechasPagos.dart';
//import 'package:aplicacion_01/src/view/home_view.dart';
import 'package:aplicacion_01/src/view/fechasPagos.dart';
import 'package:aplicacion_01/src/view/login_admin.dart';
import 'package:aplicacion_01/src/view/menu.dart';
import 'package:aplicacion_01/src/view/puestos.dart';
//import 'package:aplicacion_01/src/view/usuario.dart';
//import 'package:aplicacion_01/src/view/login_admin.dart';
//import 'package:aplicacion_01/src/view/usuario.dart';
//import 'package:aplicacion_01/src/view/fechasPagos.dart';
import 'package:flutter/material.dart';
//import 'usuario.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sigec System",
      theme: ThemeData(
        buttonBarTheme: ButtonBarThemeData(buttonMinWidth: 20),
        textTheme: TextTheme(
          subhead: TextStyle(
            fontSize: 15,
          ),
        ),
        
      ),

        routes:<String, WidgetBuilder>{
          "/loginadmin" : (BuildContext context) => LoginAdminView(),
          "/puestos" : (BuildContext context) => PuestosView(),
          "/fechasPagos" : (BuildContext context) => FechasPagoView(),
        },

     home:MenuView(),
  
    );
  }
}
