import 'package:flutter/material.dart';
import 'package:sign_language_app/widgets/custom_text.dart';


class CustomCard extends StatelessWidget {
  double mPaddingCard = 10.0;
  double mCustomWidth = 200;
  double mCustomHeight = 140;
  double mVerticalTopPadding = 10.0;

  int mId;
  String mTitle;
  String mPathImage;
  Icon mIcon;
  Color mFilter = Colors.deepPurple;
  double mOpacity = 0.3;
  double mTitleSize = 32.0;

  CustomCard(this.mId, this.mTitle, this.mPathImage,this.mIcon);
  CustomCard.vertical(this.mId, this.mTitle, this.mPathImage,this.mIcon, this.mFilter){
    this.mOpacity = 0.1;
    this.mCustomWidth = 200.0;
    this.mCustomHeight = 200.0;
    this.mVerticalTopPadding = 180.0;
    this.mTitleSize = 22.0;
  }

  CustomCard.hero(this.mId, this.mTitle, this.mPathImage,this.mIcon, this.mFilter){
    this.mOpacity = 0.1;
    this.mCustomWidth = null;
    this.mCustomHeight = null;
    this.mVerticalTopPadding = 180.0;
    this.mTitleSize = 22.0;
  }

  @override
  Widget build(BuildContext context) {
      final mContainerIma = new Container(
    margin: new EdgeInsets.symmetric(
       vertical: 16.0
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
     margin: new EdgeInsets.only(left: 46.0),
     decoration: new BoxDecoration(
       color: new Color(0xFF333366),
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
  return Container(
         height: 120.0,
      margin: const EdgeInsets.symmetric(
         vertical: 16.0,
         horizontal: 24.0,
       ),
      child: Stack (
    children: <Widget>[
                mContainer,
                mContainerIma
               ]
  ));
    
 
  }
}