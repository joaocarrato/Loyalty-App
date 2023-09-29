// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Logos extends StatelessWidget {
  String imagePath;
  Logos({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: HexColor('#2C2F5E'), width: 2),
      ),
      child: Image.asset(
        imagePath,
        height: 32,
      ),
    );
  }
}
