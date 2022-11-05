import 'package:club/components/rounded.dart';
import 'package:flutter/material.dart';

class MethodCard extends StatelessWidget {
  const MethodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 88,
      height: 42,
      child: Rounded(
        radius: 6,
        color: Color(0xFF0101EA),
        child: Center(
          child: Text(
            '🎉 MINT',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
