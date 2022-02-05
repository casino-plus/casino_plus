import 'package:casino_plus/src/router/page_id.dart';
import 'package:riverpod/riverpod.dart';

class NaviState {
  final List<PageId> stack;

  const NaviState({
    required this.stack,
  });
}

/// バインド
class NaviNotifier extends StateNotifier<NaviState> {
  NaviNotifier(NaviState state) : super(state);
  update(NaviState state) {
    this.state = state;
  }

  pushPage(PageId id) {
    var stack = List.of(state.stack); // コピー
    stack.add(id);
    final newState = NaviState(stack: stack);
    state = newState;
  }

  setPages(List<PageId> stack) {
    final newState = NaviState(stack: stack);
    state = newState;
  }

  popPage() {
    var stack = List.of(state.stack); // コピー
    stack.removeLast();
    final newState = NaviState(stack: stack);
    state = newState;
  }
}
