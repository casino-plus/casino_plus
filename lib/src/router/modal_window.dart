import 'package:casino_plus/src/router/modal_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ModalWindow extends HookConsumerWidget {
  final ModalState state;
  const ModalWindow({
    required this.state,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text('ここにModalが表示されます');
  }
}
