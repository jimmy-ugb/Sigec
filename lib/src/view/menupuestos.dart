import 'package:flutter/material.dart';

class MenuPuestosView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MenuPuestosViewState();
  }
}

class MenuPuestosViewState extends State<MenuPuestosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Puestos Asignados"),
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
               Navigator.pushNamed(context, "/puesto1");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.laptop, size: 80,color: Colors.orange,),
                 Text("Puesto #1", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context,"/puesto2");
             },
             splashColor: Colors.cyan, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.laptop, size: 80,color: Colors.cyan,),
                 Text("Puesto #2", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
               Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context,"/puesto3");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.laptop, size: 80,color: Colors.cyan,),
                 Text("Puesto #3", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
               ], 
              ),
             ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(10.00),
            child: InkWell(
             onTap: (){
               Navigator.pushNamed(context,"/totalpuestos");
             },
             splashColor: Colors.green, 
             child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 Icon(Icons.laptop, size: 80,color: Colors.orange,),
                 Text("Total de espacio", style: TextStyle(fontSize: 20.00), textAlign: TextAlign.center,)
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