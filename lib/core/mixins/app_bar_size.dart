import 'package:flutter/material.dart';

mixin AppBarSize on Widget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
