import 'package:want_to_do/export.dart';

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
