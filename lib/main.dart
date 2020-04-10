import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Interest Calculator",
    home: SIForm(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent,
    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _formkey=GlobalKey<FormState>();
  var _currencies = ['Rupees', 'Dollers', 'Pounds'];
  var displayText = '';
  var _currentItemSelected = '';

  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        //resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Simple Ineterst Calculator"),
        ),
        body: Form(
          key: _formkey,
          child: Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: ListView(
              children: <Widget>[
                uploadImage(),
                Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    controller: principalController,
                    validator: (String value) {
                      if(value.isEmpty){
                        return 'Please enter principal amount';
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Pricincipal Amount e.g. 1200",
                        labelText: "Pricipal",
                        errorStyle: TextStyle(
                          color: Colors.yellowAccent,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    controller: roiController,
                    validator: (String value){
                      if(value.isEmpty){
                        return 'Please enter rate of interest';
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "In Percentage",
                        labelText: "Interest Rate",
                        errorStyle: TextStyle(
                          color: Colors.yellowAccent,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              controller: termController,
                              validator: (String value){
                                if(value.isEmpty){
                                  return 'Please enter the terms in years';
                                }

                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "In Years",
                                  labelText: "Terms",
                                  errorStyle: TextStyle(
                                    color: Colors.yellowAccent,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: DropdownButton(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              items: _currencies.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              value: _currentItemSelected,
                              onChanged: (String newValueSelected) {
                                //code to execute, when a menu item is selected from dropdown
                                _onDropDownItemSelected(newValueSelected);
                              },
                            ))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        textColor: Theme.of(context).primaryColorDark,
                        child: Text(
                          'Calculate',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          setState(() {
                            if(_formkey.currentState.validate()) {
                              displayText = _calculateTotalReturn();
                            }
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          'Reset',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          setState(() {
                            _reset();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    this.displayText,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget uploadImage() {
    Image image =
        Image(image: AssetImage('images/inr1.png'), width: 125.0, height: 125.0);
    return Container(
      child: image,
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturn() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);
    double totalAmountPayable = principal + (principal * roi * term) / 100;
    String result =
        'After $term years, your investment will be worth $totalAmountPayable in $_currentItemSelected';
    return result;
  }

  void _reset() {
    principalController.text = '';
    roiController.text = '';
    termController.text = '';
    displayText = '';
    _currentItemSelected = _currencies[0];
  }
}
