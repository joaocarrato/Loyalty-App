// ignore_for_file: use_build_context_synchronously, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:loyalty_app/pages/is_logged.dart';
import 'package:loyalty_app/pages/principal_page/login_page.dart';
import 'package:loyalty_app/util/field.dart';

class SignUpEmailPage extends StatefulWidget {
  const SignUpEmailPage({super.key});

  @override
  State<SignUpEmailPage> createState() => _SignUpEmailPageState();
}

class _SignUpEmailPageState extends State<SignUpEmailPage> {
  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPassword = TextEditingController();

  final TextEditingController _controllerConfirmPassword =
      TextEditingController();

  // metodo de registrar
  Future registerMethod() async {
    if (passwordController()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _controllerEmail.text.trim(),
        password: _controllerPassword.text.trim(),
      );
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const IsLogged(),
      ),
    );
  }

  bool passwordController() {
    if (_controllerPassword.text.trim() ==
        _controllerConfirmPassword.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 40,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.email,
                size: 60,
                color: Colors.blue[900],
              ),
              const SizedBox(height: 50),
              const Text(
                'Register with an email',
                style: TextStyle(
                  fontFamily: 'recoleta',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 40),
              FieldsCamp(
                textHint: 'Type your email',
                isObscure: false,
                controller: _controllerEmail,
              ),
              const SizedBox(height: 10),
              FieldsCamp(
                textHint: 'Type your password',
                isObscure: true,
                controller: _controllerPassword,
              ),
              FieldsCamp(
                textHint: 'Confirm your password',
                isObscure: true,
                controller: _controllerConfirmPassword,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: registerMethod,
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: HexColor('#F7E8E7'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
