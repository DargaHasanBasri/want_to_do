import 'package:want_to_do/export.dart';

class FingerPrintScannerProvider extends StatelessWidget {
  const FingerPrintScannerProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FingerPrintScannerViewModel(),
      child: const FingerPrintScannerPage(),
    );
  }
}
