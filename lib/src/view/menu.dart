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
        padding: EdgeInsets.all(10.00),
        child: GridView.count(crossAxisCount: 2,
        children: <Widget>[
        Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context, "/menupuestos");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.laptop, size: 80,color: Colors.orange,),
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
                 Icon(Icons.monetization_on, size: 80,color: Colors.cyan,),
                 Text("Consulta de Pagos", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context,"/HomeView");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.close, size: 80,color: Colors.red,),
                 Text("Cerrar Sesión", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
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

