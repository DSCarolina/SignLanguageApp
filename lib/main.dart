import 'package:flutter/material.dart';
import 'package:sign_language_app/screens/home_screen.dart';

void main(){
  
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFF183661),
          elevation: 0.0,
          title: Text(
            "LENGUAJE DE SEÑAS",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: HomeScreen()
      )
    )
  );
}