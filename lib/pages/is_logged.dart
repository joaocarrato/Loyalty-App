import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loyalty_app/pages/logged_page.dart';
import 'package:loyalty_app/pages/principal_page/login_page.dart';

class IsLogged extends StatelessWidget {
  const IsLogged({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const LoggedPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
