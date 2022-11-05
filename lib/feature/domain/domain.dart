import 'package:club/components/rounded.dart';
import 'package:club/components/scaffold_indicator.dart';
import 'package:club/feature/domain/domain_label_name_notifier.dart';
import 'package:club/feature/domain/state.codegen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DomainPage extends HookConsumerWidget {
  const DomainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(domainStateProvider);
    final domainLabelNameNotifier =
        ref.watch(domainLabelNameNotifierProvider.notifier);

    return state.when(
      data: (state) => _DomainPage(
          state: state, domainLabelNameNotifier: domainLabelNameNotifier),
      error: (error, _) => Container(),
      loading: () => const ScaffoldIndicator(),
    );
  }
}

class _DomainPage extends StatelessWidget {
  final DomainState state;
  final DomainLabelNameNotifier domainLabelNameNotifier;

  const _DomainPage({
    Key? key,
    required this.state,
    required this.domainLabelNameNotifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            'You need to get \na subdomain in ENS.\nAdd by your username',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 40),
          TextField(
            onChanged: (labelName) => domainLabelNameNotifier.set(labelName),
            textAlign: TextAlign.center,
            cursorColor: Colors.white,
            focusNode: FocusNode(canRequestFocus: true),
            decoration: const InputDecoration(
              hintText: "username.byclub.in",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          state.isAvailable.when(
            data: (isAvailable) => Text(
              isAvailable ? 'Available' : 'Not available',
              style: TextStyle(
                color: isAvailable ? Colors.green : Colors.red,
              ),
            ),
            error: (error, _) => Text(
              '$error',
              style: const TextStyle(color: Colors.white),
            ),
            loading: () => const CircularProgressIndicator(),
          ),
          const Spacer(),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'e.g. satoya',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: RoundedInk(
                      radius: 8,
                      onTap: (context) {},
                      child: Container(
                        width: 56,
                        height: 48,
                        color: Colors.white,
                        child: const Icon(Icons.arrow_right),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
