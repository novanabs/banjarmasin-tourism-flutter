import 'dart:ui';
import 'package:banjarmasin_tourism/Screen/food_screen.dart';
import 'package:banjarmasin_tourism/Screen/place_screen.dart';
import 'package:banjarmasin_tourism/Screen/souvenir.dart';
import 'package:banjarmasin_tourism/Screen/transport_screen.dart';
import 'package:banjarmasin_tourism/Screen/travel_tips_screen.dart';
import 'package:banjarmasin_tourism/screen/place_preview_screen.dart';
import 'package:banjarmasin_tourism/screen/recommended_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var a = MediaQueryData.fromWindow(window).size.width;

  Future<void> neverSatisfied(String title, String description) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(description),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Back'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Banjarmasin Tourism',
          ),
          leading: Text(''),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                // Most Popular text
                Container(
                  margin: EdgeInsets.only(top: 7.0, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Most Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          neverSatisfied('Most Popular',
                              'The Most popular and the most visited tourism place in banjarmasin ');
                        },
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.amber,
                        child: Icon(
                          Icons.info_outline,
                          size: 20.0,
                          color: Colors.red,
                        ),
                      )
//                    Text('View all'),
                    ],
                  ),
                ),
                //most popular list item
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(top: 5),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ListTileImage(
                          source: 'images/FloatingMarket_@dwirosalia.jpg',
                          title: 'Pasar Terapung',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                        ListTileImage(
                          source: 'images/Sabilal_@alivrahmatul.jpg',
                          title: 'Mesjid Sabilal Muhtadin',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                        ListTileImage(
                          source: 'images/MenaraPandang_@syam_hitl12.jpg',
                          title: 'Menara Pandang',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                        ListTileImage(
                          source: 'images/patung_bekantan_@m.khoirilkholid.jpg',
                          title: 'Patung Bekantan',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                // near banjarmasin
                Container(
                  margin: EdgeInsets.only(top: 7.0, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Near Banjarmasin',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      InkWell(
                        onTap: () {
                          neverSatisfied('Near Banjarmasin',
                              'The nearest tourism place to banjarmasin is in Barito Kuala, Banjarbaru, Kabupaten Banjar and Peleihari');
                        },
                        borderRadius: BorderRadius.circular(20.0),
                        splashColor: Colors.amber,
                        child: Icon(
                          Icons.info_outline,
                          size: 20.0,
                          color: Colors.red,
                        ),
                      )
//                    Text('View all'),
                    ],
                  ),
                ),
                // near banjarmasin list item
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(top: 5),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ListTileImage(
                          source: 'images/jembatan_barito_@pesonaid_travel.jpg',
                          title: 'Jembatan Barito',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                        ListTileImage(
                          source: 'images/PulauKembang_@sijulak_ 2.jpg',
                          title: 'Pulau Kembang',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                        ListTileImage(
                          source:
                              'images/Pulau_bakut_@yudistira_arlangga_putera.jpg',
                          title: 'Pulau Bakut',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                        ListTileImage(
                          source: 'images/FloatingMarket_@dwirosalia.jpg',
                          title: 'Pasar Terapung Lok Baintan',
                          onTap: () {
                            Navigator.pushNamed(context, PlacePreviewScreen.id);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                // text menu
                Container(
                  margin: EdgeInsets.symmetric(vertical: 7.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          height: 3.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Menu',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.0),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          height: 3.0,
                        ),
                      ),
                    ],
                  ),
                ),
                // menu list grid view
                Expanded(
                  flex: 3,
                  child: GridView.count(
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    crossAxisCount: 4,
                    children: <Widget>[
                      MenuItem(
                        title: 'Food',
                        icon: Icons.fastfood,
                        navigation: () {
                          Navigator.pushNamed(context, FoodScreen.id);
                        },
                      ),
                      MenuItem(
                        title: 'Place',
                        icon: Icons.place,
                        navigation: () {
                          Navigator.pushNamed(context, PlaceScreen.id);
                        },
                      ),
                      MenuItem(
                        title: 'Souvenir',
                        icon: Icons.business_center,
                        navigation: () {
                          Navigator.pushNamed(context, SouvenirScreen.id);
                        },
                      ),
                      MenuItem(
                        title: 'Transport',
                        icon: Icons.directions_car,
                        navigation: () {
                          Navigator.pushNamed(context, TransportScreen.id);
                        },
                      ),
                      MenuItem(
                        title: 'Festival',
                        icon: Icons.insert_emoticon,
                      ),
                      MenuItem(
                        title: 'Recommend',
                        icon: Icons.done_outline,
                        navigation: () {
                          Navigator.pushNamed(context, RecommendedScreen.id);
                        },
                      ),
                      MenuItem(
                        title: 'Culture',
                        icon: Icons.account_balance,
                      ),
                      MenuItem(
                        title: 'Tips',
                        icon: Icons.info,
                        navigation: () {
                          Navigator.pushNamed(context, TravelTipsScreen.id);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange,
          fixedColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Review'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              title: Text('Info'),
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileImage extends StatelessWidget {
  ListTileImage({this.source, this.title, this.onTap});
  final String source;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        child: Stack(
          children: <Widget>[
            Container(
              width: 140.0,
              height: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.asset(
                  source,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                color: Colors.blueGrey.withOpacity(0.5),
                width: 140,
                padding: EdgeInsets.all(5),
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  MenuItem({this.icon, this.color, this.title, this.navigation});

  final String title;
  final IconData icon;
  final Color color;
  final Function navigation;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(20.0),
      elevation: 3,
      child: InkWell(
        onTap: navigation,
        splashColor: Colors.teal.shade400,
        borderRadius: BorderRadius.circular(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 35.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
