import 'package:flutter/material.dart';

class ContainerRowClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(child: Text(
              "First Row",
              )
              ),
              Expanded(child: Text(
                "First Row",
              )
              ),
              Expanded(child: Text(
                "First Row",
              )
              ),
              Expanded(child: Container(
                child:FlagImage()
              )
              )
            ],
          ),
        ),
      ),
    );
  }


}

class FlagImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //AssetImage assetImage=AssetImage('images/flag.png');
    Image image=Image(image:AssetImage('images/flag.png'));
    return image;
  }
}