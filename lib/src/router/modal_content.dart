//
// モーダルID と モーダルの紐付け
//

import 'package:casino_plus/src/router/modal_id.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModalContent extends HookConsumerWidget {
  final ModalId id;
  const ModalContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      default:
        return const Text('モーダルはありません');
    }
  }
}
