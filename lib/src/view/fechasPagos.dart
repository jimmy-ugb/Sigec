//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'trip.dart';

class FechasPagosView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FechasViewState();
  }
}

class FechasViewState extends State<FechasPagosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[700],
        actions: <Widget>[
          renderEncabezado(),
        ],
      ),
      body: ListadoFechas(),
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
}

class ListadoFechas extends StatelessWidget {
  final List<Trip> tripList = [
    Trip("ENERO", DateTime.now(), DateTime.now(), 300.00, "Car"),
    Trip("FERERO", DateTime.now(), DateTime.now(), 100.00, "Car"),
    Trip("MARZO", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("ABRIL", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("MAYO", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("JUNIO", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("JULIO", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("AGOSTO", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("SEPTIEMBRE", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("OCTUBRE", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("NOVIEMBRE", DateTime.now(), DateTime.now(), 200.00, "Car"),
    Trip("DICIEMBRE", DateTime.now(), DateTime.now(), 200.00, "Car"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new ListView.builder(
            itemCount: tripList.length,
            itemBuilder: (BuildContext context, int index) =>
                buildTripCard(context, index)));
  }

  Widget buildTripCard(BuildContext context, int index) {
    final Trip = tripList[index];
    return Container(
      color: Colors.green[300],
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 3.0),
                child: Row(
                  children: <Widget>[
                    Text(Trip.title,
                        style: new TextStyle(
                            fontSize: 20.0, color: Colors.orange[700])),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                        "${DateFormat('dd/MM/yy').format(Trip.starDate).toString()} -- ${DateFormat('dd/MM/yy').format(Trip.starDate).toString()}"),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "\$${Trip.budget.toStringAsFixed(2)}",
                      style:
                          new TextStyle(fontSize: 25.00, color: Colors.black),
                    ),
                    Spacer(),
                    Icon(
                      Icons.details,
                      color: Colors.green[700],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
