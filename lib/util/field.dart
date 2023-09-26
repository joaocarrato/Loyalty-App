// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FieldsCamp extends StatelessWidget {
  String textHint;
  bool isObscure;
  TextEditingController controller;
  Icon? obscureIcon;
  FieldsCamp({
    super.key,
    required this.textHint,
    required this.isObscure,
    required this.controller,
    this.obscureIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: HexColor('#2C2F5E'),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: textHint,
          hintStyle: TextStyle(color: Colors.grey.shade700),
          suffixIcon: obscureIcon,
        ),
        obscureText: isObscure,
      ),
    );
  }
}
