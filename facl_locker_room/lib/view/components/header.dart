import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_images.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 64,
      ),
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.bgCircleGrey,
      ),
      child: Image.asset(
        AppImages.safeLock,
      ),
    );
  }
}
