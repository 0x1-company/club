import 'package:club/feature/tab/tab.dart';
import 'package:club/feature/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:club/components/scaffold_indicator.dart';
import 'package:club/feature/root/state.codegen.dart';
import 'package:club/provider/version.dart';

class Root extends HookConsumerWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(rootAsyncStateProvider);

    // return state.when(
    //   data: (state) {
    //     if (state.isForceUpdate) {
    //       return ForceUpdatePage(key: key);
    //     } else {
    //       return const Scaffold();
    //     }
    //   },
    //   error: (error, stackTrace) {
    //     ref.refresh(versionProvider);
    //     return Container();
    //   },
    //   loading: () => const ScaffoldIndicator(),
    // );
    // return const TabPage();
    return const WelcomePage();
  }
}
