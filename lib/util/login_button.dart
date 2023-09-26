// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginButton extends StatelessWidget {
  VoidCallback onTap;
  LoginButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.7,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 360,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: HexColor('#F7E8E7'),
          ),
          child: const Center(
            child: Text(
              'Log in',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
