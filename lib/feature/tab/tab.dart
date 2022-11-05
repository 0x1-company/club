import 'package:club/components/scaffold_indicator.dart';
import 'package:club/feature/account/account.dart';
import 'package:club/feature/collection/collection.dart';
import 'package:club/feature/tab/state.codegen.dart';
import 'package:club/feature/tab/state_notifier.dart';
import 'package:club/feature/tab/tab_index_state_notifier.dart';
import 'package:club/feature/timeline/timeline.dart';
import 'package:club/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TabPage extends HookConsumerWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final store = ref.watch(tabStateNotifierProvider.notifier);
    final state = ref.watch(tabStateNotifierProvider);
    final tabIndexStateNotifier =
        ref.watch(tabIndexStateNotifierProvider.notifier);

    final tabController = useTabController(
      initialLength: 3,
      initialIndex: 1,
    );
    tabController.addListener(() {
      tabIndexStateNotifier.set(tabController.index);
    });

    return state.when(
      data: (state) => _TabPage(state, store, tabController),
      error: (error, stackTrace) => Container(),
      loading: () => const ScaffoldIndicator(),
    );
  }
}

class _TabPage extends StatelessWidget {
  final TabStateNotifier store;
  final TabState state;
  final TabController tabController;

  const _TabPage(
    this.state,
    this.store,
    this.tabController, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          CollectionPage(),
          TimelinePage(),
          AccountPage(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          onTap: (index) {
            HapticFeedback.mediumImpact();
          },
          tabs: [
            Tab(
              icon: SvgPicture.asset(
                Assets.svg('shop-icon'),
                width: 0 == state.currentIndex ? 36 : 24,
                height: 0 == state.currentIndex ? 36 : 24,
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                Assets.svg('timeline-icon'),
                width: 1 == state.currentIndex ? 36 : 24,
                height: 1 == state.currentIndex ? 36 : 24,
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                Assets.svg('account-icon'),
                width: 2 == state.currentIndex ? 36 : 24,
                height: 2 == state.currentIndex ? 36 : 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
