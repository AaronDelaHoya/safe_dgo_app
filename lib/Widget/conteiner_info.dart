import 'package:flutter/material.dart';
import 'package:safe_dgo_app/costumer/costumer_model.dart';

class ContainerInfo extends StatelessWidget{

  final String nombre;
  final Icons icon;
  final

  ContainerInfo({this.nombre,this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: <Widget>[
          Icon(),
          Text(nombre)
        ],
      ),
    );
  }

}