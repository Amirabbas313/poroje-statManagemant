
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode thememode = ThemeMode.light;
  bool get isDarkmode => thememode == ThemeMode.dark;

  void toggleTheme (){
    thememode = thememode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}


// ignore: camel_case_types
class myTheme {
  static final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black
      ),
    unselectedWidgetColor: Colors.white,
    primaryColorDark: Colors.grey,
    iconTheme: IconThemeData(color: Colors.grey[900]),
    secondaryHeaderColor: Colors.grey[200],
    primaryColor: Colors.black,
    applyElevationOverlayColor: true,
    canvasColor: Colors.grey[200]
  );


  static final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(135, 18, 18, 18),
      foregroundColor: Colors.white
      ),
    unselectedWidgetColor: const Color.fromARGB(135, 18, 18, 18),
    primaryColorDark: Colors.grey,
    iconTheme: const IconThemeData(color: Colors.white),
    secondaryHeaderColor: Colors.grey[800],
    primaryColor: Colors.white,
    applyElevationOverlayColor: true,
    canvasColor: Colors.grey[700]
  );
}