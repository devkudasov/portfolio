import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 40.0,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          message,
          style: themeData.textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
