import 'package:flutter/material.dart';
import 'package:sign_language_app/widgets/text_home.dart';
import 'package:carousel_pro/carousel_pro.dart';
class WindowScreen extends StatelessWidget {
  String windowTitle = "";
  String windowDescription = "Aprendiendo ";
  Color windowColor = Colors.pink;
  double windowTitleSize = 25.0;
  Carousel img;
  int windowId;
  WindowScreen(this.windowId,this.windowTitle, this.windowColor);
  @override
  Widget build(BuildContext context) {

    final carousel1  = Carousel(
      boxFit: BoxFit.cover,
        images: [AssetImage("assets/abc/B.jpg")],
        animationCurve: Curves.fastOutSlowIn,
         animationDuration:Duration(milliseconds: 4000),    
    );
    final carousel2  = Carousel(
      boxFit: BoxFit.cover,
        images: [AssetImage("assets/numero/0.jpg"),
        AssetImage("assets/numero/1.jpg")],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds: 4000),
    );
    final carousel3  = Carousel(
      boxFit: BoxFit.cover,
        images: [AssetImage("assets/color/rojo.png"),
        AssetImage("assets/color/amarillo.png")],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds: 4000),
    );
    final carousel4  = Carousel(
      boxFit: BoxFit.cover,
        images: [AssetImage("assets/dia/lunes.png"),
        AssetImage("assets/dia/martes.png"),
        AssetImage("assets/dia/miercoles.png"),
        AssetImage("assets/dia/jueves.png"),
        AssetImage("assets/dia/viernes.png"),
        AssetImage("assets/dia/sabado.png"),
        AssetImage("assets/dia/domingo.png")],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds: 4000),
    );
   
  if (windowId==1) {
    windowDescription=windowDescription+"el abecedario";
    img=carousel1;
  }else{
    if (windowId==2){
        windowDescription=windowDescription+"los números";
      img=carousel2;
    }
    else{
      if (windowId==3){
        windowDescription=windowDescription+"los colores";
       img=carousel3;
    }
    else{
        windowDescription=windowDescription+"los días \n de la semana";
      img=carousel4;
    }
    }
  }
  final boardTitle = Text(
      windowDescription,
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Color(0xFF385170),
          fontSize: 24.0,
          fontWeight: FontWeight.w500
      ),
    );
    return Scaffold(  
      appBar: AppBar(
        // backgroundColor: Color(0xFF333366),
        backgroundColor:Color(0xFF183661),
         title: CustomText(windowTitle, Colors.white, windowTitleSize),
      ),
      body: Container(
        decoration: new BoxDecoration(color: Color(0xFFeef2f5)),
        child: Stack(
          children: <Widget>[
           
                Positioned(
                  top: 25.0,
                  left: 35.0,
                  child: boardTitle  
                ), 
                Positioned(
                  top: 90.0,
                  left: 15.0,
                  child: new Container(
                    height: 330.0,
                    width: 330.0,
                    child: new ClipRect(
                      child: img
                    ),
                  ),                  
                ),                            
          ],
        ),
      ),
    );
  }
}
