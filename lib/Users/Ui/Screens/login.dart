import 'package:flutter/material.dart';
import 'package:safe_dgo_app/Widget/btn_customade.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _login();
  }

}
class _login extends State<login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:
        Container(
          margin: EdgeInsets.only(top: 250.0),
          padding: EdgeInsets.symmetric(horizontal: 19.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 19.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white),
                height: 55.0,
                width: 380.0,
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    hintText: 'Ingresa tu nombre',
                    labelText: 'Nombre',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: .1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0.1),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.symmetric(horizontal: 19.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white),
                height: 55.0,
                width: 380.0,
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Colors.black,
                    ),
                    hintText: 'Ingresa tu contraeña',
                    labelText: 'Contraseña',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0.1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan, width: 0.1),
                    ),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: btnCostume(
                      actionTap: (){},
                      color1: 0xFF0097a7,
                      color2: 0xFF0097a7,
                      name: "Iniciar Sesión",
                      width: 180.0,
                      height: 50.0)),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 50.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "No tienes cuenta?",
                      style: TextStyle(fontSize: 15.0, color: Colors.black26),
                    ),
                    FlatButton(
                      child: Text("Registrate"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {

                            }));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

}