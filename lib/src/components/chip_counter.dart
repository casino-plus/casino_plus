import 'package:casino_plus/src/components/url_image.dart';
import 'package:casino_plus/src/config/image_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChipCounter extends HookConsumerWidget {
  final int chipCount;
  const ChipCounter(this.chipCount);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.00),
      ),
      child: Row(
        children: [
          UrlImage.assetsName(ImageNames.chip),
          Text(chipCount.toString()),
        ],
      ),
    );
  }
}
