import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 60.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 30.0,
          ),
          SizedBox(width: 100),
          Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 100),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: <Color>[
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF),
          ],
        ),
      ),
    );
  }
}
