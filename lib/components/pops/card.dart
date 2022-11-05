import 'package:club/components/avatar_card.dart';
import 'package:club/components/pops/creator_card.dart';
import 'package:club/components/pops/method_card.dart';
import 'package:club/components/pops/price_card.dart';
import 'package:club/components/rounded.dart';
import 'package:flutter/material.dart';

class PopsCard extends StatelessWidget {
  const PopsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              AvatarCard(
                url:
                    'https://pbs.twimg.com/profile_images/1528599200132259841/G1fUHZQ9_400x400.jpg',
                width: 48,
                height: 48,
              ),
              SizedBox(width: 12),
              Text(
                'tomokisun.partyin',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          AspectRatio(
            aspectRatio: 1.0,
            child: Rounded(
              radius: 16,
              child: Image.network(
                'https://pbs.twimg.com/profile_images/1528599200132259841/G1fUHZQ9_400x400.jpg',
              ),
            ),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                MethodCard(),
                SizedBox(width: 8),
                PriceCard(),
                SizedBox(width: 8),
                CreatorCard(),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '3 hours ago',
            style: TextStyle(
              color: Color(0xFF808080),
            ),
          ),
          const SizedBox(height: 8),
          const SizedBox(height: 8),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
