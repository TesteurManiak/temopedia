import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.illustrations.illError.path),
        const Text('Une erreur est survenue'),
      ],
    );
  }
}
