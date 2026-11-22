import 'package:flutter/material.dart';
import 'package:flutter_space_session3/screens/choose_planet_screen.dart';
import 'package:flutter_space_session3/screens/explore_universe_screen.dart';
import 'package:flutter_space_session3/screens/planet_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ExploreUniverseScreen(),
      initialRoute: ExploreUniverseScreen.routeName,
      routes: {
        ExploreUniverseScreen.routeName:(context)=>ExploreUniverseScreen(),
        ChoosePlanetScreen.routeName:(context)=>ChoosePlanetScreen(),
        PlanetDetailsScreen.routeName:(context)=>PlanetDetailsScreen()
      },
    );
  }
}
