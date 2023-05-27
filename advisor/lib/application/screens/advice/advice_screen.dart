import 'package:advisor/application/screens/advice/widgets/app_bar/adviser_app_bar.dart';
import 'package:advisor/application/screens/advice/widgets/body/body.dart';
import 'package:flutter/material.dart';

class AdviceScreen extends StatelessWidget {
  const AdviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdviserAppBar(),
      body: Body(),
    );
  }
}
