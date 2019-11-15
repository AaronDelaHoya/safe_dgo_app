import 'package:flutter/material.dart';

class btnCostume extends StatelessWidget{

  final int color1;
  final int color2;
  final String name;
  final VoidCallback actionTap;
  double height = 0.0;
  double width = 0.0;

  btnCostume({this.color1, this.color2, this.name, this.actionTap, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: actionTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: LinearGradient(
                  colors:[
                    Color(color1),
                    Color(color2)
                  ],
                  begin: FractionalOffset(0.2,0.0),
                  end: FractionalOffset(1.0,0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp
              )
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
              ),
            ),
          ),
        )
    );;
  }



}