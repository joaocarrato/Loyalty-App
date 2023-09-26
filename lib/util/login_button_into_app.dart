import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginButtonApp extends StatelessWidget {
  const LoginButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: HexColor('#F7E8E7'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
