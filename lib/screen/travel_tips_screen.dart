import 'package:flutter/material.dart';
import 'package:banjarmasin_tourism/model/travel_tips_data.dart';

class TravelTipsScreen extends StatefulWidget {
  static String id = 'travel_tips_screen';

  @override
  _TravelTipsScreenState createState() => _TravelTipsScreenState();
}

class _TravelTipsScreenState extends State<TravelTipsScreen> {
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Tips'),
      ),
      body: Container(
        child: ListView(
          children: TravelTipsData().travelTipsList,
        ),
      ),
    );
  }
}
