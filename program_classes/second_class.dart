import 'package:flutter/material.dart';
class SecondClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.black12,
      child: Center(
        child: Text(
          "Second Class Data",
          //color:Colors.black,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black,fontSize: 15),
        ),
      ),
    );
  }
  
}