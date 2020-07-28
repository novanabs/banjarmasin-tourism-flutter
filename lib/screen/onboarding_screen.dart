import 'dart:ui';
import 'package:banjarmasin_tourism/Screen/home_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  static String id = 'on_boarding_screen';
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final screenSize = MediaQueryData.fromWindow(window).size;

  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.grey.shade400,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: screenSize.height / 1.15,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                // Main OnBoarding
                Column(
                  children: <Widget>[
                    // images
                    Expanded(
                      flex: 6,
                      child: Container(
                        width: double.infinity,
                        child: Image.asset(
                          'images/PulauKembang_@sijulak_ 2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    // text welcome
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Welcome to',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // text banjarmasin tourism
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          'Banjarmasin Tourism',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // On Boarding 1
                OnBoardingPage(
                  source: 'images/OnBoarding1.png',
                  description:
                      'Easily access Banjarmasin tourism information including description, location, how to get there and cost you may expense.',
                  color: Colors.amber.shade700,
                ),
                //On Boarding 2
                OnBoardingPage(
                  source: 'images/OnBoarding2.png',
                  description:
                      'Provide the latest news about tourism  information so you will know what happens lately about the tourism place or event',
                  color: Colors.amber.shade700,
                ),
                // On Boarding 3
                OnBoardingPage(
                  source: 'images/OnBoarding3.png',
                  description:
                      'All users can give reviews about the tourism place or event to add more information to help other users. Users can also share a photo too.',
                  color: Colors.amber.shade700,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  _currentPage == _numPages - 1
                      ? Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(0),
                            child: RaisedButton(
                              color: Colors.amber.shade500,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              onPressed: () {
                                Navigator.pushNamed(context, HomeScreen.id);
                              },
                              child: Container(
                                width: 180.0,
                                child: Center(
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Oswald',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Expanded(
                          flex: 1,
                          child: Text(''),
                        ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final screenSize = MediaQueryData.fromWindow(window).size;
  OnBoardingPage({this.source, this.description, this.color});

  final String source;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            // ornament
            Container(
              height: screenSize.height / 2,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(250.0, 60.0),
                  bottomRight: Radius.elliptical(250.0, 60.0),
                ),
              ),
            ),
            // image
            Positioned(
              left: 0,
              right: 0,
              top: screenSize.height / 5,
              child: FlatButton(
                onPressed: () {
                  var compareHW = screenSize.height / screenSize.width;
                  print('Height screen = ${screenSize.height}');
                  print('Widht screen = ${screenSize.width}');
                  print('aspectRation = ${screenSize.aspectRatio}');
                  print(' Height/widht = $compareHW');
                },
                child: Image.asset(
                  source,
                  height: screenSize.height / 2.3,
                ),
              ),
            ),
            //description
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenSize.height / 40,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Oswald',
                    color: Colors.grey.shade700,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
