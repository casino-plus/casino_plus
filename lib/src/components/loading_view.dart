import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoadingView extends HookConsumerWidget {
  final bool isLoading;
  const LoadingView(this.isLoading);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return isLoading
        ? Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5), //この行を追加
                  ),
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(),
                ),
                flex: 1,
              )
            ],
          )
        : Column(
            children: const [],
          );
  }
}
