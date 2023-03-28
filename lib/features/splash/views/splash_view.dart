import 'package:flutter/material.dart';

import '../widgets/rounded_progress_bar.dart';

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
            const SizedBox(
              width: 180,
              child: RoundedProgressBar(minHeight: 20),
            ),
          ],
        ),
      ),
    );
  }
}
