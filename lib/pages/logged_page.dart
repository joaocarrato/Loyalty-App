import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoggedPage extends StatelessWidget {
  const LoggedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOGGED! as ${FirebaseAuth.instance.currentUser?.email}'),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text('sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
