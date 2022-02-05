import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SymbolCounter extends HookConsumerWidget {
  final int count;
  final double size;
  const SymbolCounter(this.count, {this.size = 20});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(500),
        ),
      ),
      child: Text(
        count.toString(),
        style: TextStyle(
          fontSize: size * 0.6,
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
