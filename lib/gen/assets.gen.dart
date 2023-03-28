/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/female.png
  AssetGenImage get female => const AssetGenImage('assets/icons/female.png');

  /// File path: assets/icons/high.png
  AssetGenImage get high => const AssetGenImage('assets/icons/high.png');

  /// File path: assets/icons/low.png
  AssetGenImage get low => const AssetGenImage('assets/icons/low.png');

  /// File path: assets/icons/male.png
  AssetGenImage get male => const AssetGenImage('assets/icons/male.png');

  /// File path: assets/icons/normal.png
  AssetGenImage get normal => const AssetGenImage('assets/icons/normal.png');

  /// File path: assets/icons/physical.png
  AssetGenImage get physical =>
      const AssetGenImage('assets/icons/physical.png');

  /// File path: assets/icons/special.png
  AssetGenImage get special => const AssetGenImage('assets/icons/special.png');

  /// File path: assets/icons/status.png
  AssetGenImage get status => const AssetGenImage('assets/icons/status.png');

  /// File path: assets/icons/temtem_unknown.png
  AssetGenImage get temtemUnknown =>
      const AssetGenImage('assets/icons/temtem_unknown.png');

  /// File path: assets/icons/ultra.png
  AssetGenImage get ultra => const AssetGenImage('assets/icons/ultra.png');

  /// File path: assets/icons/unknown.png
  AssetGenImage get unknown => const AssetGenImage('assets/icons/unknown.png');

  /// File path: assets/icons/veryhigh.png
  AssetGenImage get veryhigh =>
      const AssetGenImage('assets/icons/veryhigh.png');

  /// File path: assets/icons/verylow.png
  AssetGenImage get verylow => const AssetGenImage('assets/icons/verylow.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        female,
        high,
        low,
        male,
        normal,
        physical,
        special,
        status,
        temtemUnknown,
        ultra,
        unknown,
        veryhigh,
        verylow
      ];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/logos/icon.png');

  /// File path: assets/logos/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/logos/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [icon, logo];
}

class Assets {
  Assets._();

  static const AssetGenImage error = AssetGenImage('assets/error.png');
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();

  /// List of all assets
  List<AssetGenImage> get values => [error];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
