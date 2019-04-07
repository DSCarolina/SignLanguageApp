import 'package:flutter/material.dart';
import 'package:sign_language_app/widgets/custom_card.dart';
// import 'package:sign_language_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  Color mPurpleColor = Color(0xFF6200ea);

  @override
  Widget build(BuildContext context) {
  
    return Container(
      
      color: Colors.white,
      child: ListView(
        children: <Widget>[
        
          CustomCard(1, "Prueba1", "assets/abc.png",Icon(Icons.account_balance_wallet), ),
          CustomCard(2, "Prueba2", "assets/numero.png",Icon(Icons.account_balance_wallet), ),
          CustomCard(3, "Prueba3", "assets/color.png",Icon(Icons.account_balance_wallet), ),
        
        ],
      ),
    );
  }
}