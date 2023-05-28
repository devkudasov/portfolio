import 'package:advisor/application/screens/advice/bloc/advicer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return InkResponse(
      onTap: () {
        BlocProvider.of<AdvicerBloc>(context).add(AdviceRequestedEvent());
      },
      child: Material(
        elevation: 20.0,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: themeData.colorScheme.secondary,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 15.0,
            ),
            child: Text(
              'Get Advise',
              style: themeData.textTheme.displayLarge,
            ),
          ),
        ),
      ),
    );
  }
}
