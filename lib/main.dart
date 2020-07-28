import 'package:banjarmasin_tourism/Screen/food_screen.dart';
import 'package:banjarmasin_tourism/Screen/home_screen.dart';
import 'package:banjarmasin_tourism/Screen/place_screen.dart';
import 'package:banjarmasin_tourism/Screen/souvenir.dart';
import 'package:banjarmasin_tourism/Screen/transport_screen.dart';
import 'package:banjarmasin_tourism/Screen/travel_tips_screen.dart';
import 'package:banjarmasin_tourism/screen/place_preview_screen.dart';
import 'package:banjarmasin_tourism/screen/recommended_screen.dart';
import 'package:banjarmasin_tourism/screen/travel_tips_preview_screen.dart';
import 'package:flutter/material.dart';
import 'package:banjarmasin_tourism/Screen/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OnBoardingScreen.id,
      theme: Theme.of(context).copyWith(
        primaryColor: Colors.orange,
        accentColor: Colors.orange,
        bottomAppBarColor: Colors.orange,
      ),
      routes: {
        OnBoardingScreen.id: (context) => OnBoardingScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        FoodScreen.id: (context) => FoodScreen(),
        SouvenirScreen.id: (context) => SouvenirScreen(),
        PlaceScreen.id: (context) => PlaceScreen(),
        PlacePreviewScreen.id: (context) => PlacePreviewScreen(),
        TransportScreen.id: (context) => TransportScreen(),
        TravelTipsScreen.id: (context) => TravelTipsScreen(),
        TravelTipsPreviewScreen.id: (context) => TravelTipsPreviewScreen(),
        RecommendedScreen.id: (context) => RecommendedScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
