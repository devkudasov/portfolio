import 'package:advisor/application/screens/advice/cubit/adviser_cubit.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/advice_field.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/custom_button.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/error_message.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/greetings.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50.0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: BlocBuilder<AdviserCubit, AdviserCubitState>(
                builder: (context, state) {
                  if (state is AdvicerInitial) {
                    return const Greetings();
                  }
                  if (state is AdvicerStateLoading) {
                    return const Loading();
                  }
                  if (state is AdvicerStateLoaded) {
                    return AdviceField(advice: state.advice);
                  }
                  if (state is AdvicerStateError) {
                    return ErrorMessage(
                      message: state.message,
                    );
                  }

                  return const SizedBox();
                },
              ),
            ),
          ),
          const SizedBox(
            height: 200.0,
            child: Center(
              child: CustomButon(),
            ),
          ),
        ],
      ),
    );
  }
}
