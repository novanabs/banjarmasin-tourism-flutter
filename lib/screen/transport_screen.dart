import 'package:flutter/material.dart';
import 'package:banjarmasin_tourism/utillities/SubContentTile.dart';

class TransportScreen extends StatefulWidget {
  static String id = 'transport_screen';

  @override
  _TransportScreenState createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport Screen'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SubContentTile(
              icon: Icons.directions_car,
              title: 'Angkot',
              description: 'angkutan transportasi dalam kota',
              color: Colors.orange.shade300,
            ),
            SubContentTile(
              icon: Icons.directions_bus,
              title: 'Bus',
              description: 'Angkutan tranportasi antar daerah',
              color: Colors.orange.shade600,
            ),
            SubContentTile(
              icon: Icons.directions_car,
              title: 'taxi',
              description: 'just taxy',
              color: Colors.orange.shade800,
            ),
            SubContentTile(
              icon: Icons.directions_bike,
              title: 'Ojek',
              description: 'Transportasi menggunakan sepeda motor',
              color: Colors.orange.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
