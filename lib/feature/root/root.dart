import 'package:club/feature/tab/tab.dart';
import 'package:club/feature/welcome/welcome.dart';
import 'package:club/provider/user.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:club/components/scaffold_indicator.dart';

class Root extends HookConsumerWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userStreamProvider);

    return user.when(
      data: (user) {
        if (user != null && !user.isOnboard) {
          return const TabPage();
        } else {
          return const WelcomePage();
        }
      },
      error: (error, _) => Container(),
      loading: () => const ScaffoldIndicator(),
    );
  }
}
