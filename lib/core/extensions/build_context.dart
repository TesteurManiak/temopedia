import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension BuildContextRouter on BuildContext {
  GoRouter get router => GoRouter.of(this);
}
