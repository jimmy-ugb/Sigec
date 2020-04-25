import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResPassw extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ResPasswViewState();
  }
}

class ResPasswViewState extends State<ResPassw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Wrap(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(220.0)),
                  child: Container(
                    color: Colors.yellow,
                    width: 400.0,
                    height: 45.0,
                  ),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(400.0),
                          bottomRight: Radius.circular(500.0),
                        ),
                        child: Container(
                          color: Colors.green,
                          width: 400.0,
                          height: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(height: 30.0),
                        Text("S",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 80.0,
                                fontWeight: FontWeight.w900)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Si",
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "gec",
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 20.00, 0.00, 0.00),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Recuperar Contraseña",
                                style: TextStyle(
                                  fontSize: 21.0,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Nueva Contraseña",
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                labelStyle: TextStyle(color: Colors.grey[500]),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                icon: Icon(
                                  Icons.looks,
                                  color: Colors.orange[700],
                                  )),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Confirme Contraseña",
                                hintText: "********",
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                labelStyle: TextStyle(color: Colors.grey[500]),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                icon: Icon(
                                  Icons.looks,
                                  color: Colors.orange[700],
                                )),
                            obscureText: true,
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          RaisedButton(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Recuperar Contraña",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

}
