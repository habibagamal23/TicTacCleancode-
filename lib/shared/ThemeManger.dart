import 'package:flutter/material.dart';

import 'package:tictac/shared/ColorManger.dart';

import 'package:tictac/shared/StyleManger.dart';

import 'package:tictac/shared/ValueManger.dart';

ThemeData getTheme() {
  return ThemeData(
    primaryColor: colorManger.primry,
    accentColor: colorManger.brightgreen,
    backgroundColor: colorManger.white,
    switchTheme : SwitchThemeData(
     overlayColor: MaterialStateProperty.all(colorManger.primry),
      splashRadius: appsize.s8
    ),



    // appbar
    appBarTheme: AppBarTheme(
      color: colorManger.white,
      centerTitle: true,
      elevation: appsize.s4,
      titleTextStyle: getRegularStyle(appsize.s20, colorManger.primry),

    ),

    textTheme: TextTheme(
      headline1: getboldStyle(appsize.s20, colorManger.brightpink),
      bodyText1: getRegularStyle(appsize.s20, colorManger.brightgreen),
      caption: getboldStyle(18, colorManger.darkgray),
      subtitle1: getlightStyle(15, colorManger.black),
      subtitle2: getsemiboldStyle(36, colorManger.white),

    ),


  );
}
