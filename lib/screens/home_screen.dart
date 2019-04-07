import 'package:flutter/material.dart';
import 'package:sign_language_app/widgets/card_home.dart';

class HomeScreen extends StatelessWidget {
  Color mPurpleColor = Color(0xFF6200ea);

  @override
  Widget build(BuildContext context) {
  
    return Container(
      
      color: Color(0xFFeef2f5),
      child: ListView(
        children: <Widget>[
        
          CustomCard(1, "Abecedario", "assets/abc.png",Icon(Icons.arrow_forward),Color(0xFFe00543) ),
          CustomCard(2, "Números", "assets/numero.png",Icon(Icons.arrow_forward), Color(0xFFa6cb12)),
          CustomCard(3, "Colores", "assets/color.png",Icon(Icons.arrow_forward), Color(0xFFffcd3c)),
          CustomCard(4, "Días", "assets/dia.png",Icon(Icons.arrow_forward), Color(0xFFff9234)),
        
        ],
      ),
    );
  }
}