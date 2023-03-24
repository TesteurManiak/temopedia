import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/splash/splash.png'),
            // TODO: replace with a progress bar
            const Text('Splash'),
          ],
        ),
      ),
    );
  }
}
