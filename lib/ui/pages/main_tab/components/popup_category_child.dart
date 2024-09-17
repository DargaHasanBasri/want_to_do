import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';
import 'package:want_to_do/models/category_model/category_model.dart';

class PopupCategoryChild extends StatelessWidget {
  final List<CategoryModel> categories;

  const PopupCategoryChild({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            LocaleKeys.category_chooseCategory.locale,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.white.withOpacity(0.87),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Container(
            height: 2,
            color: AppColors.mountainMist,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Wrap(
                  spacing: 50,
                  runSpacing: 16,
                  alignment: WrapAlignment.center,
                  children: [
                    ...categories.map((category) {
                      return _buildCategoryItem(category.icon, category.label);
                    }).toList(),
                    _buildCreateNewItem(),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomButton(
            title: LocaleKeys.category_addCategory.locale,
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(String iconAddress, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.aquamarine,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Image.asset(
            iconAddress,
            height: 32,
            width: 32,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildCreateNewItem() {
    return GestureDetector(
      onTap: () {
        print('Create New clicked');
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.aquamarine,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              Icons.add,
              size: 32,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Create New",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
