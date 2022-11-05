import 'package:club/components/rounded_border.dart';
import 'package:flutter/material.dart';

class CreatorCard extends StatelessWidget {
  const CreatorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedBorder(
      radius: 6,
      color: Colors.white,
      child: Container(
        color: Colors.black,
        height: 42,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: const Center(
          child: Text(
            '🌎 Crypto Nomads Club xyz',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
