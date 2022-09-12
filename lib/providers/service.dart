import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/datasources/local/local_datasource.dart';

final _localDataSource =
    Provider<LocalDataSource>(create: (_) => IsarLocalDataSource());

class ServiceProviders extends StatelessWidget {
  const ServiceProviders({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        _localDataSource,
      ],
      child: _LocalDataSourceInitializer(child: child),
    );
  }
}

class _LocalDataSourceInitializer extends StatelessWidget {
  const _LocalDataSourceInitializer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: context.read<LocalDataSource>().initialize(),
      builder: (_, __) => child,
    );
  }
}
