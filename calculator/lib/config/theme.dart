import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xFFF5AC88),
  accentColor: Color(0xFFDEBC71),
  backgroundColor: Colors.white,
  textTheme: ThemeData.light().textTheme.copyWith(
    headline1: TextStyle(
      fontSize: 30,
      color: Color(0XFFDE8671),
      fontWeight: FontWeight.bold,
    ),
  ),
);