import 'package:facl_locker_room/theme/app_colors.dart';
import 'package:facl_locker_room/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    required this.message,
    required this.weight,
  });
  final String message;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 14,
        fontWeight: weight,
        fontFamily: AppFonts.satoshiVariable,
        color: AppColors.customWhite,
      ),
    );
  }
}
