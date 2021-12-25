import 'package:tictac/shared/Fontsmanger.dart';
import 'package:flutter/material.dart';

TextStyle gettextstyle (double fontsize ,
    FontWeight fontWeight , Color color
    ){

  return TextStyle(fontSize: fontsize , fontWeight: fontWeight ,
     color: color
  );
}

TextStyle getRegularStyle(double size , Color color){

  return gettextstyle(size, fontWeightManger.regular, color);

}
TextStyle getlightStyle(double size , Color color){

  return gettextstyle(size,  fontWeightManger.light, color);

}

TextStyle getmediumStyle(double size , Color color){

  return gettextstyle(size,  fontWeightManger.medium, color);

}
TextStyle getsemiboldStyle(double size , Color color){

  return gettextstyle(size,  fontWeightManger.semibold, color);

}
TextStyle getboldStyle(double size , Color color){

  return gettextstyle(size,  fontWeightManger.bold, color);

}