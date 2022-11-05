import 'package:club/components/pops/card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimelinePage extends HookConsumerWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _TimelinePage(
      onRefresh: () async => {},
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
