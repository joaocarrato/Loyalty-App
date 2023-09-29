// ignore_for_file: sized_box_for_whitespace, override_on_non_overriding_member

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loyalty_app/pages/principal_page/signup_page.dart';
import 'package:loyalty_app/util/field.dart';
import 'package:loyalty_app/util/login_button_into_app.dart';
import 'package:loyalty_app/util/logos.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPass = TextEditingController();

  // login method
  Future loginMethod() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _controllerEmail.text.trim(),
      password: _controllerPass.text.trim(),
    );
  }

  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerPass.dispose(); //
    super.dispose();
  }

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
                LoginButtonApp(
                  sigIn: loginMethod,
                ),

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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignUpPage()));
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
