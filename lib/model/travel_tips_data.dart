import 'package:banjarmasin_tourism/screen/travel_tips_preview_screen.dart';
import 'package:flutter/material.dart';

class TravelTipsData {
  List<Widget> travelTipsList = [
    ListTileTravelTips(
      title: 'Getting Online in Banjarmasin',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Getting Around in the City',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Tourist Information Center',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Transportation in Banjarmasin',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Driver\'s Licences',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Easy Travel with E-Money Cards',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'How to rent Car or Motorbike',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title:
          'Hands Free Travel - Banjarmasin Transport Luggage Storage and Delivery',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Gojek, Best Way to go everywhere in Banjarmasin',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Medicine in Banjarmasin',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'How to Get to Banjarmasin from Syamsyuddin Noor Airport',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Dealing with Money in Banjarmasin',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Easy Travel with E-Money Cards',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'How to Get to Syamsuddin Noor Airport',
      writer: 'Admin X',
    ),
    ListTileTravelTips(
      title: 'Exchanging Foreign Cash for Rupiah',
      writer: 'Admin X',
    ),
  ];
}

class ListTileTravelTips extends StatelessWidget {
  ListTileTravelTips({this.title, this.writer});

  final String title;
  final String writer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(
          width: 1.0,
          color: Colors.grey.shade200,
        ),
      ),
      child: ListTile(
        trailing: Icon(Icons.navigate_next),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Written by $writer'),
        onTap: () {
          Navigator.pushNamed(context, TravelTipsPreviewScreen.id);
        },
      ),
    );
  }
}
