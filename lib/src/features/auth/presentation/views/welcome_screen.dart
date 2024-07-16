import 'package:flutter/material.dart';
import 'package:task/src/core/core.export.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome',
          style: context.textTheme.headlineLarge!.copyWith(
            fontSize: 50,
            fontWeight: FontHelper.regular,
          ),
        ),
      ),
    );
  }
}
