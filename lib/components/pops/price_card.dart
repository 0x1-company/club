import 'package:club/components/rounded.dart';
import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 88,
      height: 42,
      child: Rounded(
        radius: 6,
        color: Color(0xFFFF494A),
        child: Center(
          child: Text(
            "- ＄24",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
