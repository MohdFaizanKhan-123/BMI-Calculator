import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();
  String _message = '';
  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Body Mass Index",
            style: TextStyle(fontWeight: FontWeight.w300)),
        centerTitle: true,
        backgroundColor: Colors.pink,
        shadowColor: Colors.pink[100],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 50, 20, 20),
        child: Column(
          children: <Widget>[
            new TextField(
              controller: _heightController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: 'Height in cm',
                icon: new Icon(
                  Icons.trending_up,
                  color: Colors.pink,
                ),
                fillColor: Colors.pink,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
              ),
            ),
            Divider(
              height: 50,
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            new TextField(
              controller: _weightController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: 'Weight in kg',
                fillColor: Colors.pink[500],
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                icon: new Icon(
                  Icons.line_weight,
                  color: Colors.pink,
                ),
              ),
            ),
            Divider(
              height: 50,
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              child: RaisedButton(
                elevation: 20.0,
                color: Colors.pink,
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: calculateBMI,
                hoverColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              _result == null ? "Enter Value" : "${_result.toStringAsFixed(2)}",
              style: new TextStyle(
                color: Colors.green,
                fontSize: 50,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              _message,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.pink,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    String status;
    _result = result;
    if (_result < 18.5) {
      status = "Underweight";
    } else if (_result >= 18.5 && _result < 24.9) {
      status = "Normal";
    } else if (_result >= 25 && _result < 29.9) {
      status = "Overweight";
    } else if (_result >= 30 && _result < 34.9) {
      status = "Obese";
    } else if (_result >= 35) {
      status = "Extreme Weight";
    } else {
      status = "Your weight is";
    }

    setState(() => _message = status);
  }
}
