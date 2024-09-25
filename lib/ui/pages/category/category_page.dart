import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';
import 'package:want_to_do/ui/pages/category/components/category_color_item.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends BaseStatefulState<CategoryPage> {
  TextEditingController _categoryNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _buildBody(),
    );
  }

  SafeArea _buildBody() {
    final _vm = context.watch<CategoryViewModel>();
    return SafeArea(
      child: Padding(
        padding: AppPaddings.pagePaddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.category_categoryTitle.locale,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.white.withOpacity(0.87),
              ),
            ),
            SizedBox(height: 24),
            CustomTextFormField(
              controller: _categoryNameController,
              textFieldBgColor: AppColors.darkJungleGreen,
              textFieldTitle: LocaleKeys.category_categoryName.locale,
              hintText: LocaleKeys.category_categoryNameHintText.locale,
              onChanged: (String text) {
                _vm.categoryNameLength = _categoryNameController.text.length;
              },
            ),
            SizedBox(height: 24),
            Text(
              LocaleKeys.category_categoryIcon.locale,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.white.withOpacity(0.87),
              ),
            ),
            SizedBox(height: 16),
            CustomButton(
              title: LocaleKeys.category_chooseIconFromLibrary.locale,
              backgroundColor: AppColors.darkGrey,
              borderRadius: 6,
              onClick: () {},
            ),
            SizedBox(height: 24),
            Text(
              LocaleKeys.category_categoryColor.locale,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.white.withOpacity(0.87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 50,
                child: CategoryColorItem(
                  categoryColors: _vm.customColors,
                  onTapItem: (int index) {
                    debugPrint('${_vm.customColors[index]}');
                  },
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: LocaleKeys.cancel.locale,
                      titleColor: AppColors.crocusPurple,
                      borderRadius: 6,
                      backgroundColor: AppColors.backgroundColor,
                      onClick: () {},
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: CustomButton(
                      title: LocaleKeys.category_createCategory.locale,
                      borderRadius: 6,
                      onClick: () {
                        /// TODO: Change showToastMessage content 'success'
                        _vm.isLimitExcceed(12)
                            ? showToastMessage(
                                LocaleKeys.errorMessages_charactersLimit.locale,
                              )
                            : showToastMessage("Success");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
