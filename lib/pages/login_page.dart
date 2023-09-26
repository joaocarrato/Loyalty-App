// ignore_for_file: sized_box_for_whitespace

import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loyalty_app/util/field.dart';
import 'package:loyalty_app/util/login_button_into_app.dart';
import 'package:loyalty_app/util/logos.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/octopus.png'),
                  radius: 90,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontFamily: 'recoleta',
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),

                const SizedBox(height: 50),

                // Campo de EMAIL
                FieldsCamp(
                  textHint: ' Email',
                  isObscure: false,
                  controller: _controllerEmail,
                ),

                // CAMPO DE PASSWORD
                FieldsCamp(
                  textHint: ' Password',
                  isObscure: true,
                  controller: _controllerPass,
                  obscureIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),

                const SizedBox(height: 10),

                // BOTÃO DE LOGAR
                const LoginButtonApp(),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 0.8,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'or',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // LOGOS

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Logos(imagePath: 'assets/images/google.png'),
                    Logos(imagePath: 'assets/images/apple.png'),
                  ],
                ),

                const SizedBox(height: 50),

                // TEXTO DE SE INSCREVER
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: HexColor('#868A92'),
                        fontSize: 19,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/SignUpPage');
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: HexColor('#171F4C'),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
