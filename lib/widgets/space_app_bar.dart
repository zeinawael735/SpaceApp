import 'package:flutter/material.dart';
import 'package:flutter_space_session3/constants/assets_images.dart';
import '../constants/app_colors.dart';

class SpaceAppBar extends StatelessWidget {
  String title;
  String subTitle;
  new({super.key,required this.subTitle,required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AssetsImages.earthAppBar,height: 300,fit: .cover,),
        Container(
          height: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [AppColors.blackColor, AppColors.transparentColor],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: .start,
          spacing: 80,
          children: [
            SafeArea(
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: .w700,
                    fontSize: 24,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                subTitle,
                style: TextStyle(
                  fontWeight: .w700,
                  fontSize: 24,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
