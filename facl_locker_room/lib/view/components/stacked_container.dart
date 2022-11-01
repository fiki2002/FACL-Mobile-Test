import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class StackedContainer extends StatelessWidget {
  const StackedContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 128,
      padding: const EdgeInsets.only(
        top: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgContainerPurple,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.satoshiVariable,
          color: AppColors.customWhite,
        ),
      ),
    );
  }
}
