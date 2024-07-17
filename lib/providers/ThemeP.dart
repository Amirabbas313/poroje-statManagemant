
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode thememode = ThemeMode.light;
  bool get isDarkmode => thememode == ThemeMode.dark;

  void toggleTheme (){
    thememode = thememode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}


class myTheme {
  static final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black
      ),
    iconTheme: IconThemeData(color: Colors.grey[900]),
    secondaryHeaderColor: Colors.grey[300],
    primaryColor: Colors.grey
  );


  static final lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white
      ),
    iconTheme: IconThemeData(color: Colors.grey[900]),
    secondaryHeaderColor: Colors.grey[900],
    primaryColor: Colors.grey
  );
}