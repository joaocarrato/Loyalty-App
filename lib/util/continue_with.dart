import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContinueWith extends StatelessWidget {
  String imagePath;
  String textChoose;
  ContinueWith({
    super.key,
    required this.imagePath,
    required this.textChoose,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(color: HexColor('#2C2F5E'), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Image.asset(
              imagePath,
              height: 28,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              textChoose,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
