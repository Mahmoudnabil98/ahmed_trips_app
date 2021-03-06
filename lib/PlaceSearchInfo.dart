import 'package:ahmed_trips_app/Place.dart';
import 'package:flutter/material.dart';
import 'floatting_action_button_fav.dart';

class PlaceSearchInfo extends StatelessWidget {

  PlaceTripp place;

  PlaceSearchInfo(this.place);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final place = Text(
      this.place.name,
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20.0,
          fontWeight: FontWeight.bold
      ),
    );

    final placeInfo = Padding(
        padding: EdgeInsets.symmetric(
            vertical: 10.0
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.place.where,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                this.place.type,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    fontFamily: 'Lato',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold
                ),
              )
            ]
        )
    );

    final steps = Text(
      'Steps ${this.place.steps}',
      style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.indigo
      ),
    );

    final card = Container(
      width: screenWidth * 0.95,
      margin: EdgeInsets.only(
        bottom: 10
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white70,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0)
            )
          ]
      ),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              place,
              placeInfo,
              steps
            ],
          )
      ),
    );

    return Stack(
      alignment: Alignment(0.8, 1.35),
      children: <Widget>[
        card,
        floatting_action_button_fav()
      ],
    );
  }

}