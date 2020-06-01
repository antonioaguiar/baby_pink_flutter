import 'package:baby_pink/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = false;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'baby pink',
        theme: ThemeData(
          primaryColorLight: Colors.white,
          primaryColor: Colors.pink[200],
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
        home: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.grey[200], BlendMode.srcIn)),
          ),
          child: HomePage(),
        ));
  }
}
