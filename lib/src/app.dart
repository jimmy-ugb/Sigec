import 'package:aplicacion_01/src/view/fechasPagos.dart';
import 'package:aplicacion_01/src/view/home_view.dart';
import 'package:aplicacion_01/src/view/puesto1.dart';
import 'package:aplicacion_01/src/view/puesto2.dart';
import 'package:aplicacion_01/src/view/puesto3.dart';
import 'package:aplicacion_01/src/view/totalespacio.dart';
import 'package:aplicacion_01/src/view/menupuestos.dart';
import 'package:flutter/material.dart';


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
          "/puesto1" : (BuildContext context) => Puesto1View(),
          "/puesto2" : (BuildContext context) => Puesto2View(),
          "/puesto3" : (BuildContext context) => Puesto3View(),
          "/menupuestos" : (BuildContext context) => MenuPuestosView(),
          "/fechasPagos" : (BuildContext context) => FechasPagoView(),
          "/totalpuestos" : (BuildContext context) => TotalPuestosView(),
        },

     home:HomeView(),
  
    );
  }
}
