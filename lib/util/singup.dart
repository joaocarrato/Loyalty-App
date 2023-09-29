import 'package:flutter/material.dart';
import 'package:loyalty_app/pages/principal_page/signup_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.8,
      child: Row(
        children: [
          const Text(
            'Don\'t have an account? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SignUpPage()));
            },
            child: const Text(
              'Sign up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
