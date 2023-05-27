import 'package:advisor/application/screens/advice/advice_screen.dart';
import 'package:advisor/theme.dart';
import 'package:advisor/application/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const Advisor(),
    ),
  );
}

class Advisor extends StatelessWidget {
  const Advisor({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          themeMode: themeService.getTheme(),
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdviceScreen(),
        );
      },
    );
  }
}
