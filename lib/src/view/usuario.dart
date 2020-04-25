import 'package:flutter/material.dart';

class UsuarioView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UsuarioViewState();
  }
}

class UsuarioViewState extends State<UsuarioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Agregar Usuario"),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: Column(
          children: [
            renderEncabezado(),
            renderDivisor(),
            renderCodigoView(),
            renderNombreView(),
            renderCorreoView(),
            renderContrasenaView(),
            renderConfirContrasenaView(),
            renderTelefonoView(),
            renderNivelView(),
            renderEstadoView(),
            renderBotones(),
          ],
        ),
      ),
    );
  }

  Widget renderEncabezado() {
    String nombre = "Krissia";
    return Center(
      child: Row(children: <Widget>[
        Icon(
          Icons.supervised_user_circle,
          color: Colors.green,
          size: 40,
        ),
        Container(child: Text("Bienvenido: $nombre ")),
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

  Widget renderCodigoView() {
    return Center(
        child: TextFormField(decoration: InputDecoration(hintText: "Codigo")));
  }

  Widget renderNombreView() {
    return Center(
        child: TextFormField(decoration: InputDecoration(hintText: "Nombre")));
  }

  Widget renderCorreoView() {
    return Center(
        child: TextFormField(
            decoration: InputDecoration(hintText: "Correo Electrónico")));
  }

  Widget renderContrasenaView() {
    return Center(
        child:
            TextFormField(decoration: InputDecoration(hintText: "Contraseña")));
  }

  Widget renderConfirContrasenaView() {
    return Center(
        child: TextFormField(
            decoration: InputDecoration(hintText: "Confirmar Contraseña")));
  }

  Widget renderTelefonoView() {
    return Center(
        child:
            TextFormField(decoration: InputDecoration(hintText: "Telefono")));
  }

  Widget renderNivelView() {
    return Center(
        child: TextFormField(decoration: InputDecoration(hintText: "Nivel")));
  }

  Widget renderEstadoView() {
    return Center(
        child: TextFormField(decoration: InputDecoration(hintText: "Estado")));
  }

  Widget renderBotones() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.00, vertical: 40.0),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {});
            },
            child: Icon(
              Icons.save,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {});
            },
            child: Icon(Icons.clear),
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
    );
  }
}
