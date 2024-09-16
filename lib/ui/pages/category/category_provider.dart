import 'package:want_to_do/export.dart';

class CategoryProvider extends StatelessWidget {
  const CategoryProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryViewModel(),
      child: const CategoryPage(),
    );
  }
}
