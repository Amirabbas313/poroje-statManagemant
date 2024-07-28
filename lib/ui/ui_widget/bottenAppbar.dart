import 'package:flutter/material.dart';

class BottenNav extends StatelessWidget {
  const BottenNav({super.key});

  @override
  Widget build(BuildContext context) {

    var primarycolor = Theme.of(context).primaryColor;
    var unselectedWidgetcolor = Theme.of(context).unselectedWidgetColor;

    return BottomAppBar(
      color: unselectedWidgetcolor,
      surfaceTintColor: Colors.white,
      notchMargin: 5,
      shape: const CircularNotchedRectangle(),
      height: 70,
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home_outlined,
                          color: primarycolor,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_outlined,
                          color: primarycolor,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_outline_sharp,
                          color: primarycolor,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.assessment_outlined,
                          color: primarycolor,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
