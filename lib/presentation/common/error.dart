import 'package:flutter/material.dart';

import '../../core/logging.dart';
import 'button.dart';

class AppError extends StatelessWidget {
  final String? error;
  final VoidCallback? onRetry;

  const AppError({super.key, this.error, this.onRetry});

  @override
  Widget build(BuildContext context) {
    if (error != null) {
      Log.e(error!);
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/error.png',
            width: 100,
          ),
          const SizedBox(height: 8),
          const Text(
            'Uh oh, an error was encountered',
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 8),
            AppButton.icon(
              onPressed: onRetry,
              label: const Text('Retry'),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ],
      ),
    );
  }
}
