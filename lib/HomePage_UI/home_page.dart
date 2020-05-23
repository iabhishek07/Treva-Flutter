import 'package:flutter/material.dart';
import 'package:treva/HomePage_UI/widgets/gradient_appbar.dart';
import 'home_page_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar('treva'),
          HomePageScreen(),
        ],
      ),
    );
  }
}
