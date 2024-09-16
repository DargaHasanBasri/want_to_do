import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseStatefulState<HomePage> {
  final TextEditingController searchController = TextEditingController();
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomTextFormField(
                controller: searchController,
                textFieldBgColor: AppColors.darkJungleGreen,
                isPrefixIcon: true,
                prefixIconAddress: AppAssets.icSearchPath,
                hintText: LocaleKeys.searchHintText.locale,
                hintTextColor: AppColors.silverChalice,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _dayDropdownButton(),
                    SizedBox(height: 20),
                    TaskListItem(),
                    SizedBox(height: 20),
                    _dayDropdownButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _dayDropdownButton() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.blackFel,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.today.locale,
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 10),
          Image.asset(
            AppAssets.icArrowDownPath,
            width: 16,
            height: 16,
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      forceMaterialTransparency: true,
      title: Text(
        LocaleKeys.home_home.locale,
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
          AppAssets.icSidebarMenuPath,
          color: AppColors.white,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 8,
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
