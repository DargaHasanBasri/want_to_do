import 'package:want_to_do/export.dart';

class MainTabProvider extends StatelessWidget {
  const MainTabProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainTabViewModel(),
      child: const MainTabPage(),
    );
  }
}
