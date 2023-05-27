import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return CircularProgressIndicator(
      color: themeData.colorScheme.secondary,
    );
  }
}
