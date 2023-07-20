import 'package:flutter/material.dart';
import 'package:temopedia/design_system/text_styles.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.type,
    this.color,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
  });

  final String text;

  /// Default to [AppTextType.generic].
  final AppTextType? type;

  /// Color of the text, will override the color from [type] and [style].
  final Color? color;

  /// Style that will be merged with the style from [type].
  final TextStyle? style;

  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final textTheme = context.appTextTheme;
    final typeStyle =
        type?.fetcher(textTheme) ?? AppTextType.generic.fetcher(textTheme);
    final effectiveStyle = typeStyle.merge(style).copyWith(color: color);

    return Text(
      text,
      style: effectiveStyle,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}

typedef TextTypeFetcher = TextStyle Function(AppTextTheme textTheme);

enum AppTextType {
  generic(_generic),
  genericBold(_genericBold);

  const AppTextType(this.fetcher);

  final TextTypeFetcher fetcher;
}

TextStyle _generic(AppTextTheme textTheme) => textTheme.generic;
TextStyle _genericBold(AppTextTheme textTheme) => textTheme.genericBold;
