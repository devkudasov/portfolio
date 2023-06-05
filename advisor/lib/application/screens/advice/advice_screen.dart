import 'package:advisor/application/screens/advice/cubit/adviser_cubit.dart';
import 'package:advisor/application/screens/advice/widgets/app_bar/adviser_app_bar.dart';
import 'package:advisor/application/screens/advice/widgets/body/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdviceScreenWrapperProvider extends StatelessWidget {
  const AdviceScreenWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdviserCubit(),
      child: const AdviceScreen(),
    );
  }
}

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
