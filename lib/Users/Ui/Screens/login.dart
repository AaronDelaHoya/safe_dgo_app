import 'package:flutter/material.dart';
import 'package:safe_dgo_app/Users/Repository/user_provider.dart';
import 'package:safe_dgo_app/Widget/btn_customade.dart';
import 'package:safe_dgo_app/Widget/text_input.dart';
import 'package:safe_dgo_app/Users/Block/user_block.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _login();
  }

}
class _login extends State<login>{

  TextEditingController controllerName = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();

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
                child: TextInType(
                  hintText: "Nombre de Usuario",
                  labelText: "Nombre",
                  controller: controllerName,
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0),
                child: TextInType(
                hintText: "Ingrese Contraseña",
                labelText: "Contraseña",
                controller: controllerPassword,
              ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: btnCostume(
                      actionTap: (){
                        print('name: ${controllerName.text}, pass: ${controllerPassword.text}');
                        bloc.saveUser(controllerName.text.toString(), controllerPassword.text.toString());
                      },
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
                              return null;
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