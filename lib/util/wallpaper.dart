// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Wallpaper extends StatelessWidget {
  const Wallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/wallpaper.png',
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
