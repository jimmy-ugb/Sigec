import 'package:flutter/material.dart';

class FechasPagoView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FechasPagoViewState();
  }
}

class FechasPagoViewState extends State<FechasPagoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Fechas de Pago"),
        backgroundColor: Colors.green[700],
      ),
      /*drawer: new Drawer(
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
              leading: Icon(Icons.description,
              color: Colors.green,),
              title: Text("Descipción de Puestos"),
            ),
            ListTile(
              leading: Icon(Icons.date_range,
              color: Colors.green,),
              title: Text("Fechas de Pago"),
            ),
            ListTile(
              leading: Icon(Icons.close,
              color: Colors.green,),
              title: Text("Cerrar Sesión"),
            ),
          ],
        ),
      ),*/
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
            label: Text("Mes:",
                style: TextStyle(
                  color: Colors.blue,
                )),
            numeric: false,
            onSort: (i, b) {},
          ),
          DataColumn(
            label: Text("Costo:", style: TextStyle(color: Colors.blue)),
            numeric: false,
            onSort: (i, b) {},
          ),
          DataColumn(
            label: Text("Fecha Venc:", style: TextStyle(color: Colors.blue)),
            numeric: false,
            onSort: (i, b) {},
          ),
       
        ],
        rows: datosFechaCadenas
            .map((datosFechaCadena) => DataRow(cells: [
                  DataCell(
                    Text(datosFechaCadena.mes),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(datosFechaCadena.costo),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(datosFechaCadena.fechaVenc),
                    showEditIcon: false,
                    placeholder: false,
                  ),

                  
                ]),)
            .toList(),);

class Fechas {
  String mes;
  String costo;
  String fechaVenc;
  

  Fechas({
    this.mes,
    this.costo,
    this.fechaVenc,
    
  });
}

var datosFechaCadenas = <Fechas>[
  Fechas(mes: "Enero", costo: "12.00",fechaVenc: "03 de febreo"),
  Fechas(mes: "Febrero", costo: "12.00",fechaVenc: "03 de Marzo"),
  Fechas(mes: "Marzo", costo: "12.00",fechaVenc: "03 de abril"),
  Fechas(mes: "Abril", costo: "12.00",fechaVenc: "03 de Mayo"),
  Fechas(mes: "Mayo", costo: "12.00",fechaVenc: "03 de Junio"),
  Fechas(mes: "Junio", costo: "12.00",fechaVenc: "03 de Julio"),
];

