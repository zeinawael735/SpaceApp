import 'package:flutter/material.dart';
import 'package:flutter_space_session3/constants/app_colors.dart';
import 'package:flutter_space_session3/constants/assets_images.dart';
import 'package:flutter_space_session3/screens/planet_details_screen.dart';
import 'package:flutter_space_session3/utils/planet_model.dart';
import 'package:flutter_space_session3/widgets/custom_button.dart';
import '../widgets/space_app_bar.dart';

class ChoosePlanetScreen extends StatefulWidget {
  const ChoosePlanetScreen({super.key});
  static const routeName = "ChoosePlanetScreen";

  @override
  State<ChoosePlanetScreen> createState() => _ChoosePlanetScreenState();
}

class _ChoosePlanetScreenState extends State<ChoosePlanetScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<PlanetModel> planets = [
    PlanetModel(planetImage: AssetsImages.earth, planetName: "Earth"),
    PlanetModel(
      planetImage: AssetsImages.jupiter,
      planetName: "Jupiter",
    ),
    PlanetModel(planetImage: AssetsImages.mars, planetName: "Mars"),
    PlanetModel(
      planetImage: AssetsImages.mercury,
      planetName: "Mercury",
    ),
    PlanetModel(
      planetImage: AssetsImages.neptune,
      planetName: "Neptune",
    ),
    PlanetModel(planetImage: AssetsImages.saturn, planetName: "Saturn"),
    PlanetModel(planetImage: AssetsImages.saturn, planetName: "Sun"),
    PlanetModel(planetImage: AssetsImages.uranus, planetName: "Uranus"),
    PlanetModel(planetImage: AssetsImages.venus, planetName: "Venus"),
  ];

  void goToPrevious() {
    if (currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void goToNext() {
    if (currentIndex < planets.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    String currentPlanetName = planets[currentIndex].planetName;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: Column(
        children: [
          SpaceAppBar(subTitle: 'Which  planet \nwould  you  like  to  explore?', title: 'Explore',),
          SizedBox(
            height: 300,
            child: PageView.builder(
              itemCount: planets.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) =>
                  Image.asset(planets[index].planetImage),
            ),
          ),

          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.redOrangeColor,
                radius: 30,
                child: IconButton(
                  onPressed: () {
                    goToPrevious();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              Text(
                currentPlanetName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: .w700,
                  color: AppColors.whiteColor,
                ),
              ),
              CircleAvatar(
                backgroundColor: AppColors.redOrangeColor,
                radius: 30,
                child: IconButton(
                  onPressed: () {
                    goToNext();
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 160, 16, 16),
            child: CustomButton(
              text: "Explore $currentPlanetName",
              onPressed: () {
                Navigator.of(context).pushNamed(PlanetDetailsScreen.routeName,arguments: currentPlanetName,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
