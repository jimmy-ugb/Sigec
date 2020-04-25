//import 'dart:html';
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
        title: Text("MENU"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[

             myMenu(
              title: "Crear Cliente",
              icon: Icons.supervised_user_circle,
              colores: Colors.green,
            ),
            myMenu(
              icon: Icons.supervised_user_circle,
              title: "Puestos Asignados",
              colores: Colors.green,
              
            ),
            myMenu(
              icon: Icons.money_off,
              title: "Pagos",
              colores: Colors.green,
            ),
           
            myMenu(
              icon: Icons.close,
              title: "Cerrar Sesión",
              colores: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class myMenu extends StatelessWidget {
  myMenu({
    this.title,
    this.icon,
    this.colores,
  });
  final String title;
  final IconData icon;
  final MaterialColor colores;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: InkWell(
          onTap: () {
            
          },
          splashColor: Colors.green,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  color: colores,
                  size: 60,
                ),
                Text(title, style: TextStyle(fontSize: 20.0)),
              ],
            ),
          )),
    );
  }
}
