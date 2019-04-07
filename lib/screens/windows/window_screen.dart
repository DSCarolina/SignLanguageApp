import 'package:flutter/material.dart';
import 'package:sign_language_app/widgets/text_home.dart';


class WindowScreen extends StatelessWidget {
  String WindowTitle = "";
  Color WindowColor = Colors.pink;
  double WindowTitleSize = 25.0;
 
  WindowScreen(this.WindowTitle, this.WindowColor);

  @override
  Widget build(BuildContext context) {

 final boardBottom = Container(
      height: 55.0,
      width: 180.0,
        decoration: new BoxDecoration(
      //  color: new Color(0xFF333366),
       color: new Color(0xFF87c0cd),
       shape: BoxShape.rectangle,
       borderRadius: new BorderRadius.circular(8.0),
       boxShadow: <BoxShadow>[
        //  new BoxShadow(  
        //   color: Colors.black12,
        //   blurRadius: 10.0,
        //   offset: new Offset(0.0, 10.0),
        // ),
      ],
    ),
    );

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF333366),
        backgroundColor:Color(0xFF183661),
         title: CustomText(WindowTitle, Colors.white, WindowTitleSize),
      ),
      body: Container(
        decoration: new BoxDecoration(color: Color(0xFFeef2f5)),
        child: Stack(
          children: <Widget>[
            Positioned(
                  bottom: 90.0,
                  left: 95.0,
                  child:boardBottom
                ),
            
          ],
        ),
      ),
    );

  }
}
