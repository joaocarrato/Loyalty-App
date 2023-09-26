import 'package:flutter/material.dart';
import 'package:loyalty_app/util/login_button.dart';
import 'package:loyalty_app/util/singup.dart';
import 'package:loyalty_app/util/wallpaper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // METODO DE NAVEGAÇÃO
  void changePage() {
    Navigator.pushNamed(context, '/LoginPage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // PAPEL DE PAREDE
            const Wallpaper(),
            // BOTÃO DE LOGIN
            LoginButton(
              onTap: changePage,
            ),

            // TEXTO DE SE INSCREVER
            const SignUp(),
          ],
        ),
      ),
    );
  }
}
