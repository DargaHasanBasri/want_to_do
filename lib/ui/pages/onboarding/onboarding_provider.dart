import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:want_to_do/ui/pages/onboarding/onboarding_page.dart';
import 'package:want_to_do/ui/pages/onboarding/onboarding_view_model.dart';

class OnboardingProvider extends StatelessWidget {
  const OnboardingProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingViewModel(),
      child: const OnboardingPage(),
    );
  }
}
