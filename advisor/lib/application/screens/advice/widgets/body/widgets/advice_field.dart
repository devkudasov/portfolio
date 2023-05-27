import 'package:flutter/material.dart';

class AdviceField extends StatelessWidget {
  final String advice;
  const AdviceField({super.key, required this.advice});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Material(
      elevation: 20.0,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: themeData.colorScheme.onPrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 20.0,
          ),
          child: Text(
            '''" $advice "''',
            style: themeData.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
