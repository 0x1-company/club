import 'dart:ui';

import 'package:club/components/rounded.dart';
import 'package:flutter/material.dart';

class AvatarCard extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;

  const AvatarCard({
    Key? key,
    required this.url,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Rounded(
      radius: 12,
      child: Image.network(
        url,
        width: width,
        height: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
