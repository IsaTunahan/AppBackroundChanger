import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _textColor = Colors.green;
  Color _buttonColor = Colors.red;
  Color _backroundColor = Colors.white;
  Color _appBarColor = Colors.green;
  void _changeColor() {
    setState(() {
      _textColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
      _buttonColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
      _backroundColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
      _appBarColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Backround Change Color",
          ),
          backgroundColor: _appBarColor,
        ),
        body: Container(
          color: _backroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.stars,color: _textColor,
                    ),
                    Text(
                      'Welcome to Backround Changer',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(fontSize: 20),
                        color: _buttonColor,
                      ),
                    ),
                    Icon(
                      Icons.stars,color: _textColor,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: _changeColor,
                  child: Text('Change Color'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: _textColor,
                    backgroundColor: _buttonColor,
                    textStyle: TextStyle(
                      fontSize: 50,
                      backgroundColor: 
                      _appBarColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
