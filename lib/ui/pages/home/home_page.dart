import 'package:want_to_do/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseStatefulState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.pagePaddingHorizontal,
        child: EmptyList(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      forceMaterialTransparency: true,
      title: Text(
        'Home',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: AppColors.white.withOpacity(0.87),
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Image.asset(
          'assets/ic_sidebar_menu.png',
          color: AppColors.white,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            top: 8,
          ),
          child: CustomUserAvatar(
            borderColor: Colors.transparent,
            circleRadius: 18,
          ),
        ),
      ],
    );
  }
}
