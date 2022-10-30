import 'package:facl_locker_room/theme/app_fonts.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'components/container.dart';
import 'components/header.dart';
import 'components/welcome_message.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 411,
                height: 415,
                color: AppColors.customPurple,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Header(),
                    SizedBox(
                      height: 25,
                    ),
                    WelcomeMessage(
                      message: 'Welcome to FACL locker room',
                      weight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    WelcomeMessage(
                      message:
                          'Here you can save as much as you want for the raining\ndays ahead.',
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Expanded(
                child: Column(
                  children: const [
                    CustomContainer(
                      title: 'Get Started',
                    ),
                    SizedBox(height: 20),
                    CustomContainer(
                      title: 'I already have an account',
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 20,
            width: 128,
            padding: const EdgeInsets.only(
              top: 4,
            ),
            margin: const EdgeInsets.only(
              top: 45,
            ),
            decoration: BoxDecoration(
              color: AppColors.bgContainerPurple,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text('Version 1.0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.satoshiVariable,
                  color: AppColors.customWhite,
                )),
          ),
        ],
      ),
    );
  }
}
