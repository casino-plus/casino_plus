//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PriceRibbon extends HookConsumerWidget {
  final int price;
  const PriceRibbon({
    required this.price,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Text(
          price.toString(),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
          ),
        )
      ],
    );
  }
}
