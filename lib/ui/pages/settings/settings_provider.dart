import 'package:want_to_do/export.dart';

class SettingsProvider extends StatelessWidget {
  const SettingsProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsViewModel(),
      child: const SettingsPage(),
    );
  }
}
