// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loyalty_app/pages/signup_email_page.dart';
import 'package:loyalty_app/util/continue_email.dart';
import 'package:loyalty_app/util/continue_with.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // voltar pagina anterior
  void backHome() {
    Navigator.pop(context);
  }

  // se registrar com email
  void signUpEmail() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SignUpEmailPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/octopus2.png'),
                  radius: 70,
                ),
                const SizedBox(height: 20),

                // TEXTO DE CREATE AN ACCOUNT
                const Text(
                  'Create',
                  style: TextStyle(
                      fontFamily: 'recoleta',
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  'an Account',
                  style: TextStyle(
                      fontFamily: 'recoleta',
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),

                const SizedBox(height: 30),

                // CONTINUE WITH... GOOGLE, APPLE
                ContinueWith(
                  imagePath: 'assets/images/google.png',
                  textChoose: 'Continue with Google',
                ),
                ContinueWith(
                  imagePath: 'assets/images/apple.png',
                  textChoose: 'Continue with Apple',
                ),
                const SizedBox(height: 30),
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

                // CONTINUE WITH EMAIL
                ContinueEmail(
                  onTap: signUpEmail,
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: backHome,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: HexColor('#2C2F5E'), width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Back to previous page',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
