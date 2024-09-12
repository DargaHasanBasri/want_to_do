import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      forceMaterialTransparency: true,
      title: Text(
        LocaleKeys.settings.locale,
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
          'assets/images/ic_arrow_back_left.png',
          color: AppColors.white,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [],
    );
  }
}
