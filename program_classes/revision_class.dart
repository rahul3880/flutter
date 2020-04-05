import 'package:flutter/material.dart';

class RevisionClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.black26,
      child: Center(
        child:Container(
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                    "First Row",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color:Colors.pink,
                        fontSize: 25
                    ),
                  )
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          "Seond Row First Columbn ",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                    ),
                    Expanded(
                      child: Text(
                          "Second row Second Column"
                      ),
                    ),
                    Expanded(
                      child: Text(
                          "Second row Second Column"
                      ),
                    ),
                    Expanded(
                      child: Text(
                          "Second row Second Column"
                      ),
                    ),
                    Expanded(
                      child: Text(
                          "Second row Second Column"
                      ),
                    ),
                    Expanded(
                      child: Text(
                          "Second row Second Column"
                      ),
                    ),
                    Expanded(
                      child: Text(
                          "Second row Second Column"
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }

}