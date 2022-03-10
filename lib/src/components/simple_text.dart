//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SimpleText extends HookConsumerWidget {
  final String string;
  final double size;
  final Color color;
  const SimpleText(
    this.string, {
    this.size = 20,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      string,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
