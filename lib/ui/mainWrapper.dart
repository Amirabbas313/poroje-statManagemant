// ignore_for_file: file_names


import 'package:flutter/material.dart';
import 'package:statmangmant/ui/homePage.dart';
import 'package:statmangmant/ui/profilPage.dart';
import 'package:statmangmant/ui/shupPage.dart';
import 'package:statmangmant/ui/ui_widget/bottenAppbar.dart';
import 'package:statmangmant/ui/ui_widget/themeIcon.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  Widget build(BuildContext context) {

    final PageController myPage = PageController(initialPage: 0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('my App'),
        centerTitle: true,
        actions:  const [ThemeIcon()],
      ),
      drawer: const Drawer(),
      body: PageView(
        controller: myPage,
        children: const [
          HomePage(),
          ShupPage(),
          ProfilPage(),        
        ],
      ),
      bottomNavigationBar: const BottenNav(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}