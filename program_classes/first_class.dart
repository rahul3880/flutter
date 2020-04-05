import 'dart:math';

import 'package:flutter/material.dart';
class FirstClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.redAccent,
      child: Center(
        child: Text(
          "Lucky Number Generator is working ${generateLuckyNumber()}",
          textDirection:TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
  int generateLuckyNumber(){
    var random=Random();
    int luckyNumber=random.nextInt(10);
    return luckyNumber;

  }
}