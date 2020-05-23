import 'package:flutter/material.dart';
import 'package:treva/models/planets.dart';
import 'planet_list.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => new PlanetCard(planets[index]),
        itemCount: planets.length,
        padding: new EdgeInsets.symmetric(vertical: 10.0),
      ),
    );
  }
}
