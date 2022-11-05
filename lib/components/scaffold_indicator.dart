import 'package:flutter/material.dart';

class ScaffoldIndicator extends StatelessWidget {
  const ScaffoldIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
