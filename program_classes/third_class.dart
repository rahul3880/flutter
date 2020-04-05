// this class is demonstrating the use of widgets
// the widget used in this class is CONTAINER WIDGET with margin and padding
import 'package:flutter/material.dart';
class ThirdClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: Text(
        "Container Basic ",
        textDirection: TextDirection.ltr,

      ),
    );
  }

}
