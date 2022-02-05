//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DocText extends HookConsumerWidget {
  final String string;
  final double size;
  const DocText(
    this.string, {
    this.size = 20,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      string,
      style: TextStyle(
        fontSize: size,
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
