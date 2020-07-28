//// Copyright 2018 The Flutter team. All rights reserved.
//// Use of this source code is governed by a BSD-style license that can be
//// found in the LICENSE file.
//
//import 'package:flutter/material.dart';
//
//import 'main.dart';
//
//void main() => runApp(LoginTabBar());
//
//class LoginTabBar extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      theme:
//          ThemeData(primaryColor: Colors.amber, primaryColorDark: Colors.teal),
//      home: LoginTabWidget(),
//    );
//  }
//}
//
//class LoginTabWidget extends StatelessWidget {
//  final List<Tab> myTabs = <Tab>[
//    Tab(text: "WARGA", icon: Icon(Icons.group)),
//    Tab(text: "ADMIN", icon: Icon(Icons.account_circle)),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return DefaultTabController(
//      length: myTabs.length,
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text("LOGIN"),
//          bottom: TabBar(
//            tabs: myTabs,
//          ),
//        ),
//        body: TabBarView(
//          children: [
//            Stack(
//              children: <Widget>[
//                Container(
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: AssetImage(
//                          "images/jembatan_barito_@pesonaid_travel.jpg"),
//                      fit: BoxFit.cover,
//                    ),
//                  ),
//                ),
//                SingleChildScrollView(
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Padding(
//                        padding: EdgeInsets.all(24.0),
//                        child: Image.asset(
//                          "images/bekantan.png",
//                          height: 200,
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
//                        child: Row(
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          children: <Widget>[
//                            Expanded(
//                              child: TextField(
//                                decoration: InputDecoration(
//                                    hintText: "masukkan blok",
//                                    hintStyle: TextStyle(color: Colors.white),
//                                    fillColor: Colors.white),
//                              ),
//                            ),
//                            Expanded(
//                              child: TextField(
//                                decoration: InputDecoration(
//                                    hintText: "masukkan nomor",
//                                    hintStyle: TextStyle(color: Colors.white),
//                                    fillColor: Colors.white),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
//                        child: TextField(
//                          obscureText: true,
//                          decoration: InputDecoration(
//                              hintText: "masukkan password",
//                              hintStyle: TextStyle(color: Colors.white),
//                              fillColor: Colors.white),
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
//                        child: SizedBox(
//                          width: double.infinity,
//                          child: RaisedButton(
//                            child: Text(
//                              "LOGIN",
//                              style: TextStyle(color: Colors.white),
//                            ),
//                            onPressed: () {
//                              Navigator.of(context).push(MaterialPageRoute(
//                                  builder: (context) => MainForm()));
//                            },
//                            color: Colors.redAccent,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                )
//              ],
//            ),
//            Stack(
//              children: <Widget>[
//                Container(
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: AssetImage(
//                          "images/jembatan_barito_@pesonaid_travel.jpg"),
//                      fit: BoxFit.cover,
//                    ),
//                  ),
//                ),
//                SingleChildScrollView(
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      Padding(
//                        padding: EdgeInsets.all(24.0),
//                        child: Image.asset(
//                          "images/bekantan.png",
//                          height: 200,
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
//                        child: Row(
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          children: <Widget>[
//                            Expanded(
//                              child: TextField(
//                                decoration: InputDecoration(
//                                    hintText: "masukkan blok",
//                                    hintStyle: TextStyle(color: Colors.white),
//                                    fillColor: Colors.white),
//                              ),
//                            ),
//                            Expanded(
//                              child: TextField(
//                                decoration: InputDecoration(
//                                    hintText: "masukkan nomor",
//                                    hintStyle: TextStyle(color: Colors.white),
//                                    fillColor: Colors.white),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
//                        child: TextField(
//                          obscureText: true,
//                          decoration: InputDecoration(
//                              hintText: "masukkan password",
//                              hintStyle: TextStyle(color: Colors.white),
//                              fillColor: Colors.white),
//                        ),
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
//                        child: SizedBox(
//                          width: double.infinity,
//                          child: RaisedButton(
//                            child: Text(
//                              "LOGIN",
//                              style: TextStyle(color: Colors.white),
//                            ),
//                            onPressed: () {
//                              Navigator.of(context).push(MaterialPageRoute(
//                                  builder: (context) => MainForm()));
//                            },
//                            color: Colors.redAccent,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                )
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
