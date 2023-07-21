import 'package:flutter/material.dart';

class styledText extends StatelessWidget {
  const styledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
