import 'package:flutter/material.dart';
import 'package:sign_language_app/screens/home_screen.dart';

void main(){
  Color mPurpleColor = Color(0xFFc51350);
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 0.0,
          leading: Icon(
            Icons.menu,
            color: mPurpleColor,
          ),
          title: Text(
            "LENGUAJE DE SEÑAS",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: mPurpleColor
            ),
          ),
        ),
        body: HomeScreen()
      )
    )
  );
}