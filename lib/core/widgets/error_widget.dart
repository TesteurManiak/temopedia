import 'package:flutter/material.dart';
import 'package:temopedia/core/extensions/build_context.dart';
import 'package:temopedia/gen/assets.gen.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    debugPrint('AppErrorWidget: $message');

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.illustrations.illError.path),
        Text(context.strings.generic_error),
      ],
    );
  }
}
