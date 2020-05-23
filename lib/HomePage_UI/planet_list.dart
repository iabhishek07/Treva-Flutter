import 'package:flutter/material.dart';
import 'package:treva/models/planets.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanetCard extends StatefulWidget {
  final Planet planet;
  PlanetCard(this.planet);

  @override
  _PlanetCardState createState() => _PlanetCardState();
}

class _PlanetCardState extends State<PlanetCard> {
  @override
  Widget build(BuildContext context) {
    ///Planet Thubnails
    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage(widget.planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    Widget _planetValue({String value, String image}) {
      return Row(children: <Widget>[
        Image.asset(image, height: 12.0),
        SizedBox(width: 8.0),
        Text(widget.planet.gravity,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
              color: const Color(0xffb6b2df),
            )),
      ]);
    }

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 4.0),
          Text(
            widget.planet.name,
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
          ),
          Text(
            widget.planet.location,
            style: GoogleFonts.poppins(
              fontSize: 14.0,
              color: Colors.yellow,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 6.0),
            height: 2.0,
            width: 18.0,
            color: const Color(0xff00c6ff),
          ),
          SizedBox(height: 3.0),
          Row(
            children: <Widget>[
              Expanded(
                child: _planetValue(
                  value: widget.planet.distance,
                  image: 'assets/img/ic_distance.png',
                ),
              ),
              Expanded(
                child: _planetValue(
                  value: widget.planet.gravity,
                  image: 'assets/img/ic_gravity.png',
                  
                ),
              )
            ],
          ),
        ],
      ),
    );

    final planetCard = Container(
      child: planetCardContent,
      height: 124.0,
      margin: EdgeInsets.only(left: 42.0),
      decoration: BoxDecoration(
        color: const Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(5.0, 10.0),
          ),
        ],
      ),
    );

    return Container(
      height: 125.0,
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}
