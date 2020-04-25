import 'package:flutter/material.dart';

class ClienteView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClienteViewState();
  }
}

class ClienteViewState extends State<ClienteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Agregar Cliente"),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            renderEncabezado(),
            renderDivisor(),
            renderIdCliente(),
            renderNombreView(),
            renderApellidpView(),
            renderDuiView(),
            renderCorreoView(),
            renderContrasenaView(),
            renderConfContrasenaView(),
            renderTelefonoView(),
            renderDireccionView(),
            /**renders */
          ],
        ),
      ),
    );
  }

  
  Widget renderEncabezado() {
    String nombre = "Miguel";
    return Center(
      child: Row(children: <Widget>[
        Icon(
          Icons.supervised_user_circle,
          color: Colors.green,
          size: 40,
        ),
        Container(
          child: Text("Bienvenido: $nombre "),
        ),
        Container(child: Icon(Icons.exit_to_app, color: Colors.green, size: 40)),
      ]),
    );
  }
  
  
  Widget renderIdCliente() {
    return Center(
        child: TextFormField(
            decoration: InputDecoration(hintText: "Codigo Cliente")));
  }

  Widget renderNombreView() {
    return Center(
        child: TextFormField(decoration: InputDecoration(hintText: "Nombre")));
  }

  Widget renderApellidpView() {
    return Center(
        child:
            TextFormField(decoration: InputDecoration(hintText: "Apellidos")));
  }

  Widget renderDuiView() {
    return Center(
        child: TextFormField(decoration: InputDecoration(hintText: "Dui")));
  }

  Widget renderCorreoView() {
    return Center(
        child: TextFormField(
            decoration: InputDecoration(hintText: "Correo Electronico")));
  }

  Widget renderContrasenaView() {
    return Center(
        child:
            TextFormField(decoration: InputDecoration(hintText: "Contraseña")));
  }

  Widget renderConfContrasenaView() {
    return Center(
        child: TextFormField(
            decoration: InputDecoration(hintText: "Confirmar Contraseña")));
  }

  Widget renderTelefonoView() {
    return Center(
        child:
            TextFormField(decoration: InputDecoration(hintText: "Telefono")));
  }

  Widget renderDireccionView() {
    return Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child:
            TextFormField(decoration: InputDecoration(hintText: "Direccion")));
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
