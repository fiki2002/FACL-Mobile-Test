import 'package:facl_locker_room/view/components/stacked_container.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'components/custom_button.dart';
import 'components/header.dart';
import 'components/welcome_message.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color firstColor = AppColors.customPurple;
  String firstText = 'Version 1.0';
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: w,
                height: h * 0.54,
                color: firstColor,
                child: Column(
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
              const Spacer(),
              Expanded(
                child: Column(
                  children: [
                    CustomButton(
                      title: 'Get Started',
                      callback: () {
                        setState(() {
                          firstText = 'Version 1.1';
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              elevation: 5,
                              backgroundColor: AppColors.alternateBg1,
                              content: Text(
                                'New background color has been updated to green',
                              ),
                              duration: Duration(seconds: 1),
                            ),
                          );
                          firstColor = AppColors.alternateBg1;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      title: 'I already have an account',
                      callback: () {
                        setState(
                          () {
                            firstText = 'Version 0.9';
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                elevation: 5,
                                backgroundColor: AppColors.alternateBg2,
                                content: Text(
                                    'New background color has been updated to purple'),
                                duration: Duration(seconds: 1),
                              ),
                            );
                            firstColor = AppColors.alternateBg2;
                          },
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: h * 0.525,
            left: w * 0.32,
            child: StackedContainer(
              text: firstText,
            ),
          ),
        ],
      ),
    );
  }
}
