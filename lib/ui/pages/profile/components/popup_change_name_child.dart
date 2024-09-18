import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class PopupChangeNameChild extends StatelessWidget {
  final TextEditingController newAccNameController;
  const PopupChangeNameChild({
    super.key,
    required this.newAccNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            LocaleKeys.profile_changeAccountName.locale,
            style: TextStyle(
              color: AppColors.white.withOpacity(0.87),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomDivider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: CustomTextFormField(
            controller: newAccNameController,
            isAutoTrue: true,
            textInputAction: TextInputAction.done,
            hintText: LocaleKeys.profile_changeAccountName.locale,
            textFieldBgColor: AppColors.darkGrey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                  title: LocaleKeys.cancel.locale,
                  titleColor: AppColors.crocusPurple,
                  backgroundColor: AppColors.darkGrey,
                  onClick: () {},
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  title: LocaleKeys.edit.locale,
                  onClick: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
