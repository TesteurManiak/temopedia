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

  /// File path: assets/icons/icn_female.png
  AssetGenImage get icnFemale =>
      const AssetGenImage('assets/icons/icn_female.png');

  /// File path: assets/icons/icn_high.png
  AssetGenImage get icnHigh => const AssetGenImage('assets/icons/icn_high.png');

  /// File path: assets/icons/icn_low.png
  AssetGenImage get icnLow => const AssetGenImage('assets/icons/icn_low.png');

  /// File path: assets/icons/icn_male.png
  AssetGenImage get icnMale => const AssetGenImage('assets/icons/icn_male.png');

  /// File path: assets/icons/icn_normal.png
  AssetGenImage get icnNormal =>
      const AssetGenImage('assets/icons/icn_normal.png');

  /// File path: assets/icons/icn_physical.png
  AssetGenImage get icnPhysical =>
      const AssetGenImage('assets/icons/icn_physical.png');

  /// File path: assets/icons/icn_special.png
  AssetGenImage get icnSpecial =>
      const AssetGenImage('assets/icons/icn_special.png');

  /// File path: assets/icons/icn_status.png
  AssetGenImage get icnStatus =>
      const AssetGenImage('assets/icons/icn_status.png');

  /// File path: assets/icons/icn_ultra.png
  AssetGenImage get icnUltra =>
      const AssetGenImage('assets/icons/icn_ultra.png');

  /// File path: assets/icons/icn_unknown.png
  AssetGenImage get icnUnknown =>
      const AssetGenImage('assets/icons/icn_unknown.png');

  /// File path: assets/icons/icn_very_high.png
  AssetGenImage get icnVeryHigh =>
      const AssetGenImage('assets/icons/icn_very_high.png');

  /// File path: assets/icons/icn_very_low.png
  AssetGenImage get icnVeryLow =>
      const AssetGenImage('assets/icons/icn_very_low.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icnFemale,
        icnHigh,
        icnLow,
        icnMale,
        icnNormal,
        icnPhysical,
        icnSpecial,
        icnStatus,
        icnUltra,
        icnUnknown,
        icnVeryHigh,
        icnVeryLow
      ];
}

class $AssetsIllustrationsGen {
  const $AssetsIllustrationsGen();

  /// File path: assets/illustrations/ill_error.png
  AssetGenImage get illError =>
      const AssetGenImage('assets/illustrations/ill_error.png');

  /// List of all assets
  List<AssetGenImage> get values => [illError];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/logo_big.png
  AssetGenImage get logoBig => const AssetGenImage('assets/logos/logo_big.png');

  /// File path: assets/logos/logo_small.png
  AssetGenImage get logoSmall =>
      const AssetGenImage('assets/logos/logo_small.png');

  /// File path: assets/logos/logo_unknown.png
  AssetGenImage get logoUnknown =>
      const AssetGenImage('assets/logos/logo_unknown.png');

  /// List of all assets
  List<AssetGenImage> get values => [logoBig, logoSmall, logoUnknown];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsIllustrationsGen illustrations =
      $AssetsIllustrationsGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
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
