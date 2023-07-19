import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:temopedia/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Needed to fetch the assets on web.
  HttpOverrides.global = MyHttpOverrides();
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

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (_, __, ___) => true;
  }
}
