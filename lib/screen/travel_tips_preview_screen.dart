import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TravelTipsPreviewScreen extends StatefulWidget {
  static String id = 'travel_tips_preview';

  @override
  _TravelTipsPreviewScreenState createState() =>
      _TravelTipsPreviewScreenState();
}

class _TravelTipsPreviewScreenState extends State<TravelTipsPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Tips'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 15),
              child: Text(
                'This is A Title for The Article',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: screenSize.height / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'images/jembatan_barito_@pesonaid_travel.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Written by Admin x',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Selasa, 27 Agustus 2019'),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.image,
                          size: 35,
                          color: Colors.green,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.image,
                          size: 35,
                          color: Colors.blue,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.image,
                          size: 35,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Description\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Address : '
                '\nOpen-hours : '
                '\nPhone Number : '
                '\nE-mail : \n'),
            Text(
              'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.',
              textAlign: TextAlign.justify,
            ),
            Divider(
              color: Colors.grey,
              height: 30,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
