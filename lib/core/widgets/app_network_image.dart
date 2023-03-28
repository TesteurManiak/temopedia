import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.url,
    this.fallbackUrl,
    this.errorWidget,
  });

  final String? url;

  /// Url to use if the [url] fails to load.
  final String? fallbackUrl;

  final LoadingErrorWidgetBuilder? errorWidget;

  @override
  Widget build(BuildContext context) {
    final localFallbackUrl = fallbackUrl;

    return CachedNetworkImage(
      imageUrl: url ?? '',
      errorWidget: localFallbackUrl != null
          ? (_, __, ___) {
              return CachedNetworkImage(
                imageUrl: localFallbackUrl,
                errorWidget: errorWidget,
              );
            }
          : errorWidget,
    );
  }
}
