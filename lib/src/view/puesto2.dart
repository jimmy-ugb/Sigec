import 'package:flutter/material.dart';

class Puesto2View extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Puesto2ViewState();
  }
}

class Puesto2ViewState extends State<Puesto2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Medidas Puesto #2"),
        backgroundColor: Colors.green[700],
      ),
   
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            renderEncabezado(),
            renderDivisor(),
            Container(
              child: bodyData(),
            ),
          ],
        ),
      ),
    );
  }

  Widget renderEncabezado() {
    String nombre = "Veronica Marilu Romero Menjivar";
    return Center(
      //color: Colors.deepOrangeAccent[200],
      child: Row(children: <Widget>[
        Icon(
          Icons.supervised_user_circle,
          color: Colors.green,
          size: 40,
        ),
        Container(
          child: Text(
            "Bienvenido: \n $nombre",
            style: TextStyle(color: Colors.black),
          ),
        ),
        Container(
            child: Icon(Icons.exit_to_app, color: Colors.green, size: 40)),
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

Widget bodyData() => DataTable(
        columns: <DataColumn>[
          DataColumn(
            label: Text("Medias:",
                style: TextStyle(
                  color: Colors.blue,
                )),
            numeric: false,
            onSort: (i, b) {},
          ),
          DataColumn(
            label: Text("Tipo:", style: TextStyle(color: Colors.blue)),
            numeric: false,
            onSort: (i, b) {},
          ),
          DataColumn(
            label: Text("Ubicación:", style: TextStyle(color: Colors.blue)),
            numeric: false,
            onSort: (i, b) {},
          ),
          DataColumn(
            label: Text("Costo:", style: TextStyle(color: Colors.blue)),
            numeric: false,
            onSort: (i, b) {},
          ),
        ],
        rows: datosPuestoCadenas
            .map((datosPuestoCadena) => DataRow(cells: [
                  DataCell(
                    Text(datosPuestoCadena.medida),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(datosPuestoCadena.tipo),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(datosPuestoCadena.ubicacion),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(datosPuestoCadena.costo),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                ]))
            .toList());

class DatosPuesto {
  String medida;
  String tipo;
  String ubicacion;
  String costo;

  DatosPuesto({
    this.medida,
    this.tipo,
    this.ubicacion,
    this.costo,
  });
}

var datosPuestoCadenas = <DatosPuesto>[
  DatosPuesto(
      medida: "4m",
      tipo: "Estacionario",
      ubicacion: "Mercado San Nicolas",
      costo: "12"),
];
