// this class contains the code for container, column, button, image, alert box widget
//import 'dart:html';
//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        color:Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: getListView(),
              ),
            ),
            Expanded(
                child: Text(
                    "This is the First Row in the Column",
                    style: TextStyle(color:Colors.red,fontSize: 21),
                )
            ),
            Expanded(
              child:Container(
                child: ImageDisplay(),
              ),
            ),
            Expanded(
                child: Container(
                  width: 150,
                  child: Row(
                    children: <Widget>[
                      Expanded(child:  ButtonDisplay(),)
                    ],
                  ),
                ),
            ),

          ],
        ),
      ),
    );
  }
  Widget getListView(){
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text(
              "First Item",
            style: TextStyle(color: Colors.black,fontSize: 15),
          ),
          subtitle: Text("Description of the First Element"),
          trailing: Icon(Icons.account_balance),
        ),
        ListTile(
          leading: Icon(Icons.adb),
          title: Text("Second Element"),
          subtitle: Text("Description of the second element"),
          trailing: Icon(Icons.account_circle),
        ),
        ListTile(
          leading: Icon(Icons.add_to_photos),
          title: Text("Third Element"),
          subtitle: Text("Third element description"),
          trailing: Icon(Icons.add),
        ),
      ],
    );
    return listView;
  }

}



class ButtonDisplay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 20,
      width: 250,
      child: RaisedButton(
        color: Colors.black,
          elevation: 5,
          child:Text(
              "Click Here",
            style: TextStyle(color: Colors.white,fontSize: 15),
          ),

          onPressed : (){
          //button code
            bookFlight(context);

      }
      ),
    );
  }
  void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Flight Booking Succesful"),
      content: Text("Gave a pleasant flight"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context){
        return alertDialog;
      },
    );
  }
}

class ImageDisplay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Image image2=Image(image: AssetImage('images/flag.png'),);
    return image2;
  }
}