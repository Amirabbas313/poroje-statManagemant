import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statmangmant/providers/ThemeP.dart';
import 'package:statmangmant/ui/mainWrapper.dart';
import 'package:statmangmant/ui/ui_widget/themeIcon.dart';


void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider())
    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeprovider, child){
        return MaterialApp(

          themeMode: themeprovider.thememode,
          theme: myTheme.lightTheme,
          darkTheme: myTheme.darkTheme,
          debugShowCheckedModeBanner: false,

          home: const MainWrapper(),
    );
      }
      );
  }
}




