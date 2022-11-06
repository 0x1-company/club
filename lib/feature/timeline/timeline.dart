import 'package:club/components/pops/card.dart';
import 'package:club/components/scaffold_indicator.dart';
import 'package:club/feature/timeline/state.codegen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimelinePage extends HookConsumerWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(timelineStateProvider);

    return state.when(
      data: (state) => _TimelinePage(
        onRefresh: () async => {},
      ),
      error: (error, _) => Container(),
      loading: () => const ScaffoldIndicator(),
    );
  }
}

class _TimelinePage extends StatelessWidget {
  final RefreshCallback onRefresh;

  const _TimelinePage({
    Key? key,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('club'),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const PopsCard();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 24);
          },
        ),
      ),
    );
  }
}
