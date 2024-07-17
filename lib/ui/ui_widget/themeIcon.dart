
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statmangmant/providers/ThemeP.dart';
import 'package:provider/provider.dart';

class ThemeIcon extends StatelessWidget {
  const ThemeIcon({super.key});
  
  get provider => null;

  @override
  Widget build(BuildContext context) {

  final themeprovider = Provider.of<ThemeProvider>(context);

  var switchicon = Icon(themeprovider.isDarkmode ? CupertinoIcons.moon : CupertinoIcons.sun_max);
    return IconButton(
      onPressed: (){
        themeprovider.toggleTheme;
      }, 

      icon: switchicon,
    );
  }
}
