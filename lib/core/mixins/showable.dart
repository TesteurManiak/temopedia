import 'package:flutter/material.dart';

@optionalTypeArgs
mixin ShowableDialog<T> on Widget {
  Future<T?> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => this,
    );
  }
}
