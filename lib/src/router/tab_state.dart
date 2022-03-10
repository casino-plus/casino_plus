import 'package:casino_plus/src/router/page_id.dart';
import 'package:riverpod/riverpod.dart';

class TabState {
  final PageId selectedId;

  const TabState({
    required this.selectedId,
  });
}

/// バインド
class Notifier extends StateNotifier<TabState> {
  Notifier(TabState state) : super(state);
  update(TabState state) {
    this.state = state;
  }
}

// /// 公開サンプル
// final homeTabState = StateNotifierProvider<Notifier, TabState>((ref) {
//   // 初期化
//   const initialState = TabState(
//     selectedId: PageId.profile,
//   );
//   return Notifier(initialState);
// });
