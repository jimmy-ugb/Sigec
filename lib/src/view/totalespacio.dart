import 'package:flutter/material.dart';

class TotalpuestoView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TotalPuestoViewState();
  }
}

class TotalPuestoViewState extends State<TotalpuestoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[700],
        actions: <Widget>[
          renderEncabezado(),
        ],
      ),
      body: new ListDataItem(),
    );
  }

  Widget renderEncabezado() {
    String nombre = "Veronica Marilu Romero Menjivar";
    return Center(
      child: Row(children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 30.00,
            ),
            onPressed: () {}),
        Container(
          child: Text(
            "Bienvenid@: \n $nombre \n Datos Generales",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
            child: IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  size: 30.00,
                  color: Colors.red,
                ),
          
                onPressed: () {
                  Navigator.pushNamed(context, "/HomeView");
                })),
      ]),
    );
  }

  Widget renderDivisor() {
    return Center(
      child: Row(children: [
        Expanded(
          child: Divider(
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text("S", style: TextStyle(color: Colors.green)),
        ),
        Expanded(
          child: Divider(
            height: 1,
          ),
        ),
      ]),
    );
  }
}

class ListDataItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final datoslista = [
      'Medidas: ',
      'Tipo: ',
      'Ubicación #1: ',
      'Ubicación #2: ',
      'Ubicación #3: ',
      'Costo General: ',
      'Puestos Moviles:',
      '',
    ];
    return ListView.separated(
        padding: EdgeInsets.only(top: 30.00),
        itemCount: datoslista.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: new Text(datoslista[index],
                  style: TextStyle(color: Colors.blue)),
              onTap: () {});
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.green);
        });
  }
}
