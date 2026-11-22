import 'package:flutter/material.dart';
import 'package:flutter_space_session3/utils/planet_details_model.dart';
import '../constants/app_colors.dart';

class PlanetDataWidget extends StatelessWidget {
  final PlanetDetailsModel planet;
  const new({super.key,required this.planet});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 20,
        crossAxisAlignment: .start,
        children: [
          Text(
            "About",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 24,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            planet.about,
            style: TextStyle(
              fontWeight: .w300,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            "Distance from Sun (km) : ${planet.distance}",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            "Length of Day (hours) : ${planet.lengthOfDay}",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            "Orbital Period (Earth years) : ${planet.orbitalPeriod}",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            "Radius (km) : ${planet.radius}",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            "Mass (kg) : ${planet.mass}",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            "Gravity (m/s²) : ${planet.gravity}",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            "Surface Area (km²) : ${planet.surfaceArea}",
            style: TextStyle(
              fontWeight: .w700,
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
