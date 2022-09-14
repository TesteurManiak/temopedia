import 'package:flutter/material.dart';

class AppError extends StatelessWidget {
  final String? error;
  final VoidCallback? onRetry;

  const AppError({super.key, this.error, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Uh oh, an error was encountered',
            textAlign: TextAlign.center,
          ),
          if (error != null)
            Text(
              error!,
              textAlign: TextAlign.center,
            ),
          if (onRetry != null)
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
        ],
      ),
    );
  }
}
