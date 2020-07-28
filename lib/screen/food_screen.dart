import 'package:flutter/material.dart';
// import 'package:banjarmasin_tourism/utillities/SubContentTile.dart';

class FoodScreen extends StatefulWidget {
  static String id = 'food_screen';

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Food Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
              width: screenSize.width,
              height: 70,
              color: Colors.orange,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Makanan',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(height: 8),
            Container(
              height: (screenSize.width - 16) * 1,
              width: screenSize.width,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: <Widget>[
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: screenSize.width,
              height: 70,
              color: Colors.orange.shade900,
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Jajanan',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(height: 8),
            Container(
              height: (screenSize.width - 16) * 3 / 4,
              width: screenSize.width,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: <Widget>[
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                  GridCard(
                      title: 'Soto Banjar',
                      image: 'images/soto_@pujihamzah.jpg'),
                  GridCard(
                      title: 'Nasi Kuning',
                      image: 'images/naskun_@sallysetia.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  GridCard({this.title, this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            child: Container(
              color: Colors.white.withOpacity(0.7),
              padding: EdgeInsets.all(3),
              height: screenSize.width / 15,
              width: double.infinity,
              child: Text(
                title,
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
