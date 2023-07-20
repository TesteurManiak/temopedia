import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temopedia/core/extensions/build_context.dart';
import 'package:temopedia/core/mixins/showable.dart';
import 'package:temopedia/core/widgets/error_widget.dart';
import 'package:temopedia/core/widgets/object_loader.dart';
import 'package:temopedia/core/widgets/separated_column.dart';
import 'package:temopedia/features/details/controllers/trait_controller.dart';
import 'package:temopedia/features/details/models/trait.dart';

class TraitDialog extends ConsumerWidget with ShowableDialog {
  const TraitDialog({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(traitControllerProvider(name));

    final strings = context.strings;

    return ObjectLoader(
      loadable: ref.watch(traitControllerProvider(name).notifier),
      child: AlertDialog(
        title: Text(name),
        content: state.when(
          loading: (trait) {
            if (trait != null) return _Body(trait);
            return const Center(child: CircularProgressIndicator());
          },
          loaded: _Body.new,
          error: (_) => AppErrorWidget(message: strings.generic_error),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(context.strings.global_close),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body(this.trait);

  final Trait trait;

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      mainAxisSize: MainAxisSize.min,
      separator: const SizedBox(height: 8),
      children: [
        Text(trait.description),
        Text(trait.effect),
      ],
    );
  }
}
