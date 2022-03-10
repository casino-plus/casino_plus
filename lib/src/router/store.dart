//
//
//

import 'package:casino_plus/src/router/modal_state.dart';
import 'package:casino_plus/src/router/navi_state.dart';
import 'package:casino_plus/src/router/page_id.dart';
import 'package:riverpod/riverpod.dart';

/// 公開
final naviState = StateNotifierProvider<NaviNotifier, NaviState>((ref) {
  // 初期化
  const initialState = NaviState(
    stack: [
      PageId.test,
    ],
  );
  return NaviNotifier(initialState);
});

/// 公開
final baseModalState = StateNotifierProvider<ModalNotifier, ModalState>((ref) {
  // 初期化
  const initialState = ModalState(
    queue: [],
  );
  return ModalNotifier(initialState);
});
