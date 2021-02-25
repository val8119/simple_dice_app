import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = "Tap!";

  bool isDark = false;

  Color primaryColor = Colors.grey[900];
  Color secondaryColor = Colors.white;

  double buttonFontSize = 200;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: secondaryColor,
        body: Stack(
          children: [
            FlatButton(
              minWidth: double.infinity,
              height: double.infinity,
              onPressed: () {
                setState(() {
                  buttonText = (Random().nextInt(6) + 1).toString();
                  buttonFontSize = 400;
                });
              },
              child: Text(
                buttonText,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: buttonFontSize,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: Icon(
                  Icons.wb_sunny,
                  color: primaryColor,
                ),
                onPressed: () {
                  setState(() {
                    if (isDark) {
                      primaryColor = Colors.grey[900];
                      secondaryColor = Colors.white;
                      isDark = false;
                    } else {
                      primaryColor = Colors.white;
                      secondaryColor = Colors.grey[900];
                      isDark = true;
                    }
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
