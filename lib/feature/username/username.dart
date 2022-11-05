import 'package:club/components/ink_fore.dart';
import 'package:club/components/rounded.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsernamePage extends HookConsumerWidget {
  const UsernamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _UsernamePage();
  }
}

class _UsernamePage extends StatelessWidget {
  const _UsernamePage({Key? key}) : super(key: key);

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
            textAlign: TextAlign.center,
            cursorColor: Colors.white,
            focusNode: FocusNode(canRequestFocus: true),
            decoration: const InputDecoration(
              hintText: "username",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
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
