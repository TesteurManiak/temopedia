import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../bloc/temtem_types/temtem_types_cubit.dart';
import '../../styles/text_styles.dart';
import '../../styles/theme.dart';

class TypeChip extends StatelessWidget {
  final String type;
  final bool dispTitle;

  const TypeChip(this.type, {super.key, this.dispTitle = true});

  Widget _typeWidget(TemTemApiType item) {
    if (!dispTitle) {
      return CircleAvatar(
        backgroundColor: MyColors.lightBackground,
        child: CachedNetworkImage(
          imageUrl: "https://temtem-api.mael.tech${item.icon}",
          placeholder: (context, url) => Image.asset("assets/unknown.png"),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      );
    }
    return Chip(
      elevation: 0.0,
      backgroundColor: MyColors.lightBackground,
      avatar: CachedNetworkImage(
        imageUrl: "https://temtem-api.mael.tech${item.icon}",
        placeholder: (context, url) => Image.asset("assets/unknown.png"),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      label: Text(item.name, style: TextStyles.lightText),
    );
  }

  Widget _unknownWidget() {
    if (!dispTitle) {
      return CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset("assets/unknown.png"),
      );
    }
    return Chip(
      elevation: 0.0,
      backgroundColor: MyColors.lightBackground,
      label: Text(type, style: TextStyles.lightText),
      avatar: Image.asset("assets/unknown.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    final types = context.read<TemtemTypesCubit>().temtemTypes;
    for (var item in types) {
      if (item.name.toLowerCase() == type.toLowerCase()) {
        return _typeWidget(item);
      }
    }
    return _unknownWidget();
  }
}
