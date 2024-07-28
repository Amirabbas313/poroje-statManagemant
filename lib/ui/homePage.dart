import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

  var unselectedWidgetcolor = Theme.of(context).unselectedWidgetColor;
  var primaryColordark = Theme.of(context).primaryColorDark;
  var primarycolor = Theme.of(context).primaryColor;
  var secondaryHeadercolor = Theme.of(context).secondaryHeaderColor;

    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [],
          ),
        ),
      )
    );
  }
}