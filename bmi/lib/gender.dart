import 'package:bmi/Demo.dart';
import 'package:flutter/material.dart';
import 'Demo.dart';

class gender extends StatelessWidget {
  const gender({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              elevation: 20.0,
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              splashColor: Colors.yellow,
              padding: EdgeInsets.all(50),
              child: Image.asset(
                'assets/images/m.png',
                scale: 5.0,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Demo()));
              },
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              elevation: 20.0,
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              splashColor: Colors.yellow,
              padding: EdgeInsets.all(50),
              child: Image.asset(
                'assets/images/f.png',
                scale: 5.0,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Demo()));
              },
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child:
                      Text("Developed by Faizan", textAlign: TextAlign.center),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
