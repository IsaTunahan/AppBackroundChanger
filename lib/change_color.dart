import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  Color _appBarColor = Colors.green;
  Color _buttonColor = Colors.red;
  Color _backroundColor = Colors.white;
  Color _textColor = Colors.orange;
  void _changeColor() {
    setState(() {
      _appBarColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );

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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: _backroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.star, color: _appBarColor),
                Text('Welcome to Backround Changer',
                    style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: _buttonColor,
                      ),
                    )),
                Icon(Icons.star, color: _appBarColor),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: _changeColor,
              child: Text("Change Color"),
              style: ElevatedButton.styleFrom(
                  foregroundColor: _appBarColor,
                  backgroundColor: _buttonColor,
                  textStyle:
                      TextStyle(fontSize: 50, backgroundColor: _textColor)),
            ),
          ),
        ],
      ),
    );
  }
}
