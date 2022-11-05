import 'package:club/components/avatar_card.dart';
import 'package:club/components/leader_board_account_card.dart';
import 'package:club/components/rounded.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CollectionPage extends HookConsumerWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _CollectionPage();
  }
}

class _CollectionPage extends StatelessWidget {
  const _CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://pbs.twimg.com/profile_banners/1519239341733998593/1656929506/1080x360',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Rounded(
                radius: 24,
                child: Image.network(
                  'https://pbs.twimg.com/profile_images/1543101834692202501/bH3m9gos_400x400.jpg',
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'SENZAI',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                '3 FRIENDS VISITED',
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 64,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 8);
                  },
                  itemBuilder: (context, index) {
                    return const AvatarCard(
                      url:
                          'https://pbs.twimg.com/profile_images/1498207055723003906/LGs7pwLK_400x400.jpg',
                      width: 64,
                      height: 64,
                    );
                  },
                ),
              ),
              const SizedBox(height: 34),
              const Text(
                'LEADERBOARD',
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 14),
              Flexible(
                child: ListView.separated(
                  itemCount: 100,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16);
                  },
                  itemBuilder: (context, index) {
                    return const LeaderBoardAccountCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
