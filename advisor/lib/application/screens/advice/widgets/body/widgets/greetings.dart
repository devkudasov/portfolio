import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  const Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Text(
      'Your Advice is waiting for you!',
      style: themeData.textTheme.displayLarge,
    );
  }
}
