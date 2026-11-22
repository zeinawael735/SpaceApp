import 'package:flutter/material.dart';
import 'package:flutter_space_session3/constants/app_colors.dart';
import 'package:flutter_space_session3/screens/choose_planet_screen.dart';
import '../widgets/custom_button.dart';

class ExploreUniverseScreen extends StatelessWidget {
  const ExploreUniverseScreen({super.key});
  static const routeName = "ExploreUniverseScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Login.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 16,
            top: 350,
            child: Text(
              "Explore \nThe \nUniverse ",
              style: TextStyle(
                fontSize: 48,
                fontWeight: .w900,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            right: 16,
            child: CustomButton(
              text: 'Explore',
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(ChoosePlanetScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
