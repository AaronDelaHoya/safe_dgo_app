import 'dart:convert';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:safe_dgo_app/Widget/btn_customade.dart';
import 'package:flutter/services.dart';
import 'package:safe_dgo_app/Widget/conteiner_info.dart';
import 'package:http/http.dart' as http;

class SeguridadMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SeguridadMain();
  }

}
class _SeguridadMain extends State<SeguridadMain>{

  String url="https://safe-app.now.sh/api/customers/";

  String _barcode = "";
  String name = "";
  String email = "";
  String phone = "";
  String curp = "";
  String contact= "";

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this._barcode = barcode);
      print(_barcode);
      getData();
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this._barcode = 'El usuario no dio permiso para el uso de la cámara!';
        });
      } else {
        setState(() => this._barcode = 'Error desconocido $e');
      }
    } on FormatException {
      setState(() => this._barcode =
      'nulo, el usuario presionó el botón de volver antes de escanear algo)');
    } catch (e) {
      setState(() => this._barcode = 'Error desconocido : $e');
    }
  }


  Future<String> getData() async {
    http.Response response = await http.get(Uri.encodeFull(url + _barcode),
        headers: {"Content-Type": "application/json"}
    );
    print(response.body);
    List data;


    print("$name - $email - $phone - $curp");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          alignment: Alignment(0.0,0.0),
          margin: EdgeInsets.only(top:100.0),
          child: Column(
            children: <Widget>[
              btnCostume(
                  actionTap: () {
                    scan();
                  },
                  color1: 0xFF0097a7,
                  color2: 0xFF0097a7,
                  name: "Picame",
                  width: 180.0,
                  height: 50.0
              ),ContainerInfo(
                height: 150,
                width:  250,
                icon: Icons.person,
                title: name,
                iconColor: 0xFF6078ea,
                iconSize: 25.0,
              ),ContainerInfo(
                height: 150,
                width:  250,
                icon: Icons.person,
                title: email,
                iconColor: 0xFF6078ea,
                iconSize: 25.0,
              ),ContainerInfo(
                height: 150,
                width:  250,
                icon: Icons.person,
                title: phone,
                iconColor: 0xFF6078ea,
                iconSize: 25.0,
              ),
              ContainerInfo(
                height: 150,
                width:  250,
                icon: Icons.person,
                title: curp,
                iconColor: 0xFF6078ea,
                iconSize: 25.0,
              ),
            ],
          )
      ),
    );
  }

}


