import 'package:facl_locker_room/view/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const FACLApp(),
  );
}

class FACLApp extends StatelessWidget {
  const FACLApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
      title: 'FACL Locker Room',
    );
  }
}
