import 'package:advisor/application/screens/advice/widgets/body/widgets/advice_field.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/custom_button.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/error_message.dart';
import 'package:advisor/application/screens/advice/widgets/body/widgets/loading.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 50.0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: ErrorMessage(
                message: 'Uuups something gone wrong!',
              ),
            ),
          ),
          SizedBox(
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
