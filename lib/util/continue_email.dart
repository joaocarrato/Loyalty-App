// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContinueEmail extends StatelessWidget {
  VoidCallback onTap;
  ContinueEmail({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(color: HexColor('#2C2F5E'), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          children: [
            SizedBox(width: 20),
            Icon(
              Icons.email_outlined,
              size: 28,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Sign Up with Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
