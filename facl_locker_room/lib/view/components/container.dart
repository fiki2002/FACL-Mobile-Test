import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 48,
        width: 312,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 28,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.secondaryText,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.secondaryText,
            fontSize: 16,
            fontFamily: AppFonts.satoshiVariable,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
