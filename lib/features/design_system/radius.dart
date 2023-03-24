import 'package:flutter/material.dart';

@immutable
class AppRadius extends ThemeExtension<AppRadius> {
  const AppRadius({
    required this.big,
  });

  final Radius big;

  const AppRadius.regular()
      : this(
          big: const Radius.circular(30),
        );

  @override
  AppRadius copyWith({Radius? big}) {
    return AppRadius(
      big: big ?? this.big,
    );
  }

  @override
  AppRadius lerp(ThemeExtension<AppRadius>? other, double t) {
    if (other is! AppRadius) {
      return this;
    }
    return AppRadius(
      big: Radius.lerp(big, other.big, t)!,
    );
  }
}

class AppBorderRadius extends ThemeExtension<AppBorderRadius> {
  const AppBorderRadius(this._radius);

  final AppRadius _radius;

  BorderRadius get big => BorderRadius.all(_radius.big);
  BorderRadius get topBig => BorderRadius.vertical(top: _radius.big);

  @override
  AppBorderRadius copyWith({AppRadius? radius}) {
    return AppBorderRadius(radius ?? _radius);
  }

  @override
  AppBorderRadius lerp(ThemeExtension<AppBorderRadius>? other, double t) {
    if (other is! AppBorderRadius) {
      return this;
    }
    return AppBorderRadius(_radius.lerp(other._radius, t));
  }
}
