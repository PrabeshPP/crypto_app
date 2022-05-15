import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemeData{
  static lightTheme()=>ThemeData(
    appBarTheme:const  AppBarTheme(
systemOverlayStyle: SystemUiOverlayStyle(
  statusBarBrightness: Brightness.dark,
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.dark
)        
    )
  );
}