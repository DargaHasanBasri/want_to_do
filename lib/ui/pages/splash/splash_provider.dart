import 'package:want_to_do/export.dart';

class SplashProvider extends StatelessWidget {
  const SplashProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashViewModel(),
      child: const SplashPage(),
    );
  }
}
