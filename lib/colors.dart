import 'package:flutter/material.dart';
import 'dart:math';
class Constants {
  static Color _appBarColor = Colors.green;
  void _changeColor() {
    
      _appBarColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    }
}