import 'package:flutter/material.dart';

class SizeConfig{
    static MediaQueryData _mediaQueryData;
    static double screenWidth;
    static double screenHeight;
    static double defaultSize;
    static Orientation orientation;

    void init(BuildContext context){
        _mediaQueryData=MediaQuery.of(context);
        screenHeight=_mediaQueryData.size.height;
        screenWidth=_mediaQueryData.size.width;
        orientation=_mediaQueryData.orientation;
    }
}

double getProportionateScreenHeight(double inputHeight){
    double screenHeight=SizeConfig.screenHeight;
    return(inputHeight/736)*screenHeight;
}

double getProportionateScreenWidth(double inputWidth){
    double screenWidth=SizeConfig.screenWidth;
    return(inputWidth/414)*screenWidth;
}