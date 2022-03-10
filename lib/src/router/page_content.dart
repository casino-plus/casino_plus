//
// ページIDと画面UIの紐付け
//

import 'package:casino_plus/src/router/page_id.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageContent extends HookConsumerWidget {
  final PageId id;
  const PageContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      case PageId.test:
        return const Text('TEST Page');
    }
  }
}
