import 'package:club/components/ink_fore.dart';
import 'package:flutter/material.dart';

class RoundedBorder extends StatelessWidget {
  final double elevation;
  final double radius;
  final Widget child;
  final Color? color;

  const RoundedBorder({
    Key? key,
    this.elevation = 0,
    required this.radius,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: elevation,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: BorderSide(
          color: color ?? const Color(0xFF000000),
        ),
      ),
      child: child,
    );
  }
}

class RoundedBorderInk extends RoundedBorder {
  RoundedBorderInk({
    Key? key,
    double elevation = 0,
    required double radius,
    Color? color,
    required Function(BuildContext context) onTap,
    required Widget child,
  }) : super(
          key: key,
          elevation: elevation,
          radius: radius,
          color: color,
          child: InkFore(
            onTap: onTap,
            child: child,
          ),
        );
}
