//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: ListView( children: [
          Image.asset(
             "images/logo.png"
        
      ),
      TextFormField(
        decoration: InputDecoration(hintText: "Usuario o correo electronico"),
        ),
      TextFormField(
        decoration: InputDecoration(hintText: "Contraseña"),
        obscureText: true,
        ),
    ],
    ),
    ),
    );
  }
}