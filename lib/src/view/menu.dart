//import 'dart:html';
//import 'package:aplicacion_01/src/view/home_view.dart';
//import 'package:aplicacion_01/src/view/menu.dart';
//import 'package:aplicacion_01/src/view/puestos.dart';
//import 'package:aplicacion_01/src/view/login_admin.dart';
//import 'package:aplicacion_01/src/view/usuario.dart';
//import 'package:aplicacion_01/src/view/fechasPagos.dart';
import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MenuViewState();
  }
}

class MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("MENU 2"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        padding: EdgeInsets.all(10.00),
        child: GridView.count(crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context, "/loginadmin");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.group_add, size: 80,color: Colors.green,),
                 Text("Crear Cliente", style: TextStyle(fontSize: 20.00),textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context, "/puestos");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.laptop, size: 80,color: Colors.green,),
                 Text("Puestos Asignados", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context,"/fechasPagos");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.monetization_on, size: 80,color: Colors.green,),
                 Text("Consulta de Pagos", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){},
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.close, size: 80,color: Colors.green,),
                 Text("Cerrar Sesioón", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}

