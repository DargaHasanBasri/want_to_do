import 'package:want_to_do/export.dart';

class CalendarProvider extends StatelessWidget {
  const CalendarProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalendarViewModel(),
      child: const CalendarPage(),
    );
  }
}
