import 'package:casino_plus/src/router/modal_id.dart';
import 'package:riverpod/riverpod.dart';

class ModalState {
  final List<ModalId> queue;

  const ModalState({
    required this.queue,
  });
}

/// バインド
class ModalNotifier extends StateNotifier<ModalState> {
  ModalNotifier(ModalState state) : super(state);
  update(ModalState state) {
    this.state = state;
  }
}
