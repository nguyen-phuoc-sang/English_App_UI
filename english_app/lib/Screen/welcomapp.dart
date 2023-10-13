import 'package:english_app/Screen/helloone.dart';
import 'package:flutter/material.dart';

class WelcomApp extends StatefulWidget {
  const WelcomApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Splash createState() => _Splash();
}

class _Splash extends State<WelcomApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HelloOne()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 6, 149, 215),
              Color.fromARGB(255, 0, 72, 131),
            ],
          ),
        ),
        child: const Center(
          child: Image(
            image: AssetImage('assets/logo.png'),
          ),
        ),
      ),
    );
  }
}