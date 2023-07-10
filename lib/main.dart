import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GoRouter.optionURLReflectsImperativeAPIs = true;

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).whenComplete(
    () {
      runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      );
    },
  );
}
