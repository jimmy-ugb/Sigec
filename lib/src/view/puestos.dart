import 'package:flutter/material.dart';

class PuestosView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PuestosViewState();
  }
}

class PuestosViewState extends State<PuestosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Puestos Asignados"),
        backgroundColor: Colors.green[700],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(
                "SIGEC SYSTEM",
                style:
                    new TextStyle(fontWeight: FontWeight.w700, fontSize: 17.0),
              ),
              accountEmail: new Text("Correo Electronico"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("url"),
              ),
              decoration: new BoxDecoration(color: Colors.green[600]),
            ),
            ListTile(
              leading: Icon(
                Icons.description,
                color: Colors.green,
              ),
              title: Text("Descipción de Puestos"),
              
            ),
        
            ListTile(
              leading: Icon(
                Icons.close,
                color: Colors.green,
              ),
              title: Text("Cerrar Sesión"),
            ),
          ],
        ),
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
