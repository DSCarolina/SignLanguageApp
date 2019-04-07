import 'package:flutter/material.dart';
import 'package:sign_language_app/widgets/text_home.dart';
import 'package:sign_language_app/screens/windows/window_screen.dart';


class CustomCard extends StatelessWidget {
  double mPaddingCard = 40.0;
  double mPaddingCard2 = 130.0;
  double paddingSize = 8.0;

  int mId;
  String mTitle;
  String mPathImage;
  Icon mIcon;
  Color mFilter = Colors.deepPurple;
  double mTitleSize = 32.0;

  CustomCard(this.mId, this.mTitle, this.mPathImage,this.mIcon,this.mFilter);
  @override
  Widget build(BuildContext context) {
    final mContainerIma = new Container(
    margin: new EdgeInsets.symmetric(
       vertical: 16.0,
       horizontal: 15.0
     ),
     alignment: FractionalOffset.centerLeft,
  
     child: new Image(
       image: new AssetImage(mPathImage),
       height: 92.0,
       width: 92.0,
    ),
  );
  final mContainer = new Container(
     height: 124.0,
     margin: new EdgeInsets.only(left: 5.0),
     decoration: new BoxDecoration(
      //  color: new Color(0xFF333366),
       color: new Color(0xFF183661),
       shape: BoxShape.rectangle,
       borderRadius: new BorderRadius.circular(8.0),
       boxShadow: <BoxShadow>[
         new BoxShadow(  
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );
  final cardArrowFab = Positioned(
      bottom: paddingSize,
      right: paddingSize,
      child: FloatingActionButton(
        heroTag: "fab1_$mTitle",
        backgroundColor: Colors.black38,
        onPressed: (){
            Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => WindowScreen(mId,mTitle, mFilter)),
            );
        },
        child: Icon(        
          Icons.arrow_forward_ios,
          color: Colors.white,          
        ),
      ),
    );

  return Container(
         height: 120.0,
      margin: const EdgeInsets.symmetric(
         vertical: 12.0,
         horizontal: 16.0,
       ),
      child: Stack (
    children: <Widget>[
                mContainer,
                mContainerIma,
                 Positioned(
                  bottom: mPaddingCard,
                  left: mPaddingCard2,
                  child: CustomText(mTitle, mFilter, mTitleSize),
                ),
                cardArrowFab
               ]
  ));
    
 
  }
}