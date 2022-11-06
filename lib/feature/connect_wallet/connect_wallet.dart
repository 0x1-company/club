import 'package:club/components/ink_fore.dart';
import 'package:club/feature/connect_wallet/async_action.dart';
import 'package:club/feature/domain/domain.dart';
import 'package:club/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ConnectWalletPage extends HookConsumerWidget {
  const ConnectWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAction = ref.watch(connectWalletAsyncActionProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Connect Wallet',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 51),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  InkFore(
                    onTap: (context) {
                      asyncAction
                          .connect((uri) => launchUrlString(uri))
                          .then((value) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DomainPage(),
                          ),
                        );
                      });
                    },
                    child: SvgPicture.asset(Assets.svg('walletconnect-icon')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 88),
            const Text(
              'What is a Wallet?',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'A wallet is used to send, receive, store, and display digital assets. It’s also a new way to log in, without needing to create new accounts and passwords on every website.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 44),
            Row(
              children: [
                const Spacer(),
                InkFore(
                  onTap: (context) {},
                  child: const Text(
                    'Get a Wallet',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                InkFore(
                  onTap: (context) {},
                  child: const Text(
                    'Learn More',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
