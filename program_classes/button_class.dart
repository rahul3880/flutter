import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Center(
        child: Row(
          children: <Widget>[
            Expanded(child: Text(
            "Aarav Mishra"
            )
            ),
            Expanded(child: Text(
                "Vaishnavi Mishra"
            )
            ),
          Expanded(child: Container(
          child:ImageLoader(),
          ),
          ),
          FlightBookButton()
          ],
        ),
        )
      ),
    );
  }
}

class ImageLoader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Image image=Image(image:Image.asset('images/flag.png'));
    Image image1=Image(image:AssetImage('images/flag.png'));
    return image1;
  }
}
class FlightBookButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
          color: Colors.red,
          child: Text(
              "Button Content",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 6.0,
          onPressed: (){
            //button action
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