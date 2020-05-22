import 'package:flutter/material.dart';
import 'gradient_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar('treva'),
        ],
      ),
    );
  }
}
