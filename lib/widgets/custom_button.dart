import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../screens/choose_planet_screen.dart';

class CustomButton extends StatelessWidget {
  String text;
  void Function()? onPressed;
  new({super.key, required this.text , required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.redOrangeColor,
        minimumSize: const Size(double.infinity, 58),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
        text
            ,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 21,
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.arrow_forward,
              size: 32,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
