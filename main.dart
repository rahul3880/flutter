import 'dart:math';
import './program_classes/first_class.dart';
import "package:flutter/material.dart";
import './program_classes/second_class.dart';
import './program_classes/third_class.dart';
import './program_classes/forth_class.dart';
import './program_classes/revision_class.dart';
import './program_classes/container_row.dart';
import './program_classes/button_class.dart';
import './program_classes/column_class.dart';
import 'package:flutter_app1/program_classes/first_class.dart';
void main()=>runApp(MyFlutterApp());
class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lucky Number Generator",
      home: Scaffold(
        appBar: AppBar(title: Text("AppBar Title"),),
        body: ContainerClass(),
      ),
    );
  }

}