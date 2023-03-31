import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.url,
    this.fallbackUrl,
    this.placeholder,
    this.errorWidget,
  });

  final String? url;

  /// Url to use if the [url] fails to load.
  final String? fallbackUrl;

  final PlaceholderWidgetBuilder? placeholder;
  final LoadingErrorWidgetBuilder? errorWidget;

  @override
  Widget build(BuildContext context) {
    final localFallbackUrl = fallbackUrl;

    return CachedNetworkImage(
      imageUrl: url ?? '',
      placeholder: placeholder,
      errorWidget: localFallbackUrl != null
          ? (_, __, ___) {
              return CachedNetworkImage(
                imageUrl: localFallbackUrl,
                placeholder: placeholder,
                errorWidget: errorWidget,
              );
            }
          : errorWidget,
    );
  }
}
