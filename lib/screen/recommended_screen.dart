import 'package:flutter/material.dart';

class RecommendedScreen extends StatefulWidget {
  static String id = 'recommended_screen';

  @override
  _RecommendedScreenState createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Icon(Icons.access_alarm),
              Icon(Icons.directions_bike),
              Icon(Icons.ac_unit)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  child: Image.asset(
                    'images/jembatan_barito_@pesonaid_travel.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/bekantan.png',
                        height: 200,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  child: Image.asset(
                    'images/jembatan_barito_@pesonaid_travel.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/bekantan.png',
                        height: 200,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  child: Image.asset(
                    'images/jembatan_barito_@pesonaid_travel.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/bekantan.png',
                        height: 200,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        child: FlatButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
