import 'package:flutter/material.dart';

class ContainerInfo extends StatelessWidget{

  String title;
  IconData icon;
  double height;
  double width;
  double iconSize;
  int iconColor;


  ContainerInfo({this.title, this.icon, this.height,this.width,this.iconSize,this.iconColor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: iconSize,
            color: Color(iconColor),
          ),
          Text(title)
        ],
      ),
    );
  }

}