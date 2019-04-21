import 'package:flutter/material.dart';
import 'package:sign_language_app/widgets/text_home.dart';


class WindowScreen extends StatelessWidget {
  String windowTitle = "";
  String windowDescription = "Aprendiendo ";
  Color windowColor = Colors.pink;
  double windowTitleSize = 25.0;
  String pathimage="assets/mars.png";

  int windowId;
 
  WindowScreen(this.windowId,this.windowTitle, this.windowColor);

  @override
  Widget build(BuildContext context) {
  if (windowId==1) {
    windowDescription=windowDescription+"el abecedario";
    pathimage= "assets/abc/B.jpg";
  }else{
    if (windowId==2){
        windowDescription=windowDescription+"los números";
        pathimage="assets/numero/0.jpg";
    }
    else{
      if (windowId==3){
        windowDescription=windowDescription+"los colores";
        pathimage="assets/color/rojo.png";
    }
    else{
        windowDescription=windowDescription+"los días \n de la semana";
        pathimage="assets/dia/lunes.png";
    }
    }

  }
 final boardBottom = Container(
      height: 60.0,
      width: 190.0,
        decoration: new BoxDecoration(
      //  color: new Color(0xFF333366),
       color: new Color(0xFF87c0cd),
       shape: BoxShape.rectangle,
       borderRadius: new BorderRadius.circular(8.0)
    ),
    );
   final boardImage = Container(
      height: 250.0,
      width: 250.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(pathimage)
        )
      ),
    );
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
                  bottom: 90.0,
                  left: 85.0,
                  child:boardBottom
                ),
                Positioned(
                  top: 25.0,
                  left: 35.0,
                  child: boardTitle  
                ), 
                Positioned(
                  top: 85.0,
                  left: 55.0,
                  child: boardImage 
                ),   
                                     
          ],
        ),
      ),
    );

  }
}
