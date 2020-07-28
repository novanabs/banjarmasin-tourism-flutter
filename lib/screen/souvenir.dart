import 'package:flutter/material.dart';
import 'package:banjarmasin_tourism/utillities/SubContentTile.dart';

class SouvenirScreen extends StatefulWidget {
  static String id = 'souvenir_screen';

  @override
  _SouvenirScreenState createState() => _SouvenirScreenState();
}

class _SouvenirScreenState extends State<SouvenirScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Souvenir Screen'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SubContentTile(
              icon: Icons.ac_unit,
              title: 'Sasirangan',
              description: 'Seni motif kain khas kalsel',
              color: Colors.orange.shade300,
            ),
            SubContentTile(
              icon: Icons.local_mall,
              title: 'Baju',
              description: 'motif dan design khas daerah',
              color: Colors.orange.shade600,
            ),
            SubContentTile(
              icon: Icons.music_note,
              title: 'Alat musik',
              description: 'Alat musik khas daerah',
              color: Colors.orange.shade800,
            ),
            SubContentTile(
              icon: Icons.navigation,
              title: 'Mandau',
              description: 'Pisau khas daerah',
              color: Colors.orange.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
