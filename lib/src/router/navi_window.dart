import 'package:casino_plus/src/router/navi_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'page_content.dart';

class NaviWindow extends HookConsumerWidget {
  final NaviState state;
  final void Function() popPage;
  const NaviWindow({
    required this.state,
    required this.popPage,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Navigator(
      pages: [
        for (var pageId in state.stack)
          MaterialPage(
            child: PageContent(id: pageId),
          ),
      ],
      onPopPage: (route, result) {
        debugPrint('POPします');
        popPage();
        return false;
      },
    );
  }
}
