import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:want_to_do/ui/pages/welcome/welcome_page.dart';
import 'package:want_to_do/ui/pages/welcome/welcome_view_model.dart';

class WelcomeProvider extends StatelessWidget {
  const WelcomeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeViewModel(),
      child: const WelcomePage(),
    );
  }
}
