import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectableBorderButton extends HookConsumerWidget {
  final bool isSelected;
  final void Function() onPressed;
  final Widget child;
  const SelectableBorderButton({
    required this.isSelected,
    required this.onPressed,
    required this.child,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
            border:
                isSelected ? Border.all(width: 6, color: Colors.blue) : null,
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: child,
      ),
    );
  }
}
