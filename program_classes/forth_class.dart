//this class is based on the demonstration of row and column widgets
// using row and column widget we can organize the widgets in desired way
import 'package:flutter/material.dart';

class FourthClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Text(
              "First Column",
              textDirection: TextDirection.ltr,
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Aarav Mishra",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  )),
                  Expanded(
                      child: Text(
                    "Vaishnavi Mishra",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
