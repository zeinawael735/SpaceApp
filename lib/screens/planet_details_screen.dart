import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:flutter_space_session3/constants/app_colors.dart';
import 'package:flutter_space_session3/constants/assets_models.dart';
import 'package:flutter_space_session3/utils/planet_details_model.dart';
import 'package:flutter_space_session3/widgets/space_app_bar.dart';
import '../widgets/planet_data_widget.dart';

class PlanetDetailsScreen extends StatefulWidget {
  PlanetDetailsScreen({super.key});
  static const routeName = "PlanetDetailsScreen";
  Map<String, PlanetDetailsModel> planets = {
    "Earth": PlanetDetailsModel(
      title: "Earth: Our Blue Marble",
      about: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      distance: "149,598,026",
      gravity: "9.81",
       lengthOfDay: "23.93",
      mass: "5.972 × 10²⁴",
      orbitalPeriod: "1",
      radius: "6,371",
      surfaceArea: "5.10 × 10⁸", imagePath: AssetsModels.earth,
    ),
    "Sun": PlanetDetailsModel(
      title: "The Sun: Our Solar System's Star",
      about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distance: "0",
      gravity: "274",
      lengthOfDay: "0",
      mass: "1.989 × 10³⁰",
      orbitalPeriod: "0",
      radius: "695,700",
      surfaceArea: "6.09 × 10¹²", imagePath: AssetsModels.sun,
    ),
    "Mercury": PlanetDetailsModel(
      title: "Mercury: The Closest Planet",
      about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distance: "57,909,227",
      gravity: "3.7",
      lengthOfDay: "1,407.60",
      mass: "3.301 × 10²³",
      orbitalPeriod: "0.24",
      radius: "2,439.70",
      surfaceArea: "7.48 × 10⁷", imagePath: AssetsModels.mercury,
    ),
    "Venus": PlanetDetailsModel(
      title: "Venus: Earth's Toxic Twin",
      about: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      distance: "108,209,072",
      gravity: "8.87",
      lengthOfDay: "5,832.20",
      mass: "4.867 × 10²⁴",
      orbitalPeriod: "0.62",
      radius: "6,051.80",
      surfaceArea: "4.60 × 10⁸", imagePath: AssetsModels.venus,
    ),
    "Mars": PlanetDetailsModel(
      title: "Mars: The Red Planet",
      about: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      distance: "227,943,824",
      gravity: "3.71",
      lengthOfDay: "24.62",
      mass: "6.39 × 10²³",
      orbitalPeriod: "1.88",
      radius: "3,389.50",
      surfaceArea: "1.45 × 10⁸", imagePath: AssetsModels.mars,
    ),
    "Jupiter": PlanetDetailsModel(
      title: "Jupiter: The Gas Giant",
      about: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      distance: "778,547,669",
      gravity: "24.79",
      lengthOfDay: "9.92",
      mass: "1.898 × 10²⁷",
      orbitalPeriod: "11.86",
      radius: "69,911",
      surfaceArea: "6.21 × 10¹⁵", imagePath: AssetsModels.jupiter,
    ),
    "Saturn": PlanetDetailsModel(
      title: "Saturn: The Ringed Planet",
      about: "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      distance: "1,426,666,422",
      gravity: "10.44",
      lengthOfDay: "10.66",
      mass: "5.683 × 10²⁶",
      orbitalPeriod: "29.46",
      radius: "58,232",
      surfaceArea: "4.27 × 10¹⁵", imagePath: AssetsModels.saturn,
    ),
    "Uranus": PlanetDetailsModel(
      title: "Uranus: The Tilted Planet",
      about: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      distance: "2,870,990,000",
      gravity: "8.69",
      lengthOfDay: "24.62",
      mass: "8.681 × 10²⁵",
      orbitalPeriod: "84.01",
      radius: "25,362",
      surfaceArea: "8.1 × 10¹⁵", imagePath: AssetsModels.uranus,
    ),
    "Neptune": PlanetDetailsModel(
      title: "Neptune: The Distant World",
      about: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      distance: "4,498,252,900",
      gravity: "11.15",
      lengthOfDay: "16.11",
      mass: "1.024 × 10²⁶",
      orbitalPeriod: "164.8",
      radius: "24,622",
      surfaceArea: "7.65 × 10¹⁵", imagePath: AssetsModels.neptune,
    ),
  };

  @override
  State<PlanetDetailsScreen> createState() => _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final String planetName =
        ModalRoute.of(context)!.settings.arguments as String? ?? "Earth";
    final PlanetDetailsModel planet =
        widget.planets[planetName] ?? widget.planets["Earth"]!;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: .start,
          children: [
            Stack(
              children: [
                SpaceAppBar(subTitle: planet.title, title: planetName),
                Positioned(
                  top: 80,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: AppColors.redOrangeColor,
                    radius: 25,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Flutter3DViewer(src: planet.imagePath),
            ),
            PlanetDataWidget(planet: planet,),
          ],
        ),
      ),
    );
  }
}
