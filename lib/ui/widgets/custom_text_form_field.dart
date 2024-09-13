import 'package:want_to_do/export.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.controller,
    super.key,
    String? hintText,
    String? textFieldName,
    double? borderRadius,
    bool? multiline,
    TextInputType? inputType,
    Color? textFieldBgColor,
    Color? hintTextColor,
    TextInputAction? textInputAction,
    this.isEnabled,
    this.onChanged,
    this.onObscureChanged,
    bool? isAutoTrue,
    this.isRequired = false,
    this.isHaveObscure = false,
  })  : inputType = inputType ?? TextInputType.text,
        textInputAction = textInputAction ?? TextInputAction.next,
        textFieldBgColor = textFieldBgColor ?? Colors.transparent,
        textFieldTitle = textFieldName ?? '',
        hintText = hintText ?? '',
        hintTextColor = hintTextColor ?? AppColors.white,
        borderRadius = borderRadius ?? 4,
        isAutoTrue = isAutoTrue ?? false,
        multiline = multiline ?? false;
  final TextEditingController controller;
  final String hintText;
  final String textFieldTitle;
  final double borderRadius;
  final Function? onChanged;
  final Function? onObscureChanged;
  final bool? isEnabled;
  final bool? multiline;
  final TextInputType inputType;
  final Color textFieldBgColor;
  final Color hintTextColor;
  final bool? isAutoTrue;
  final bool isRequired;
  final bool isHaveObscure;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getTextFieldTitle(),
        TextFormField(
          controller: controller,
          obscureText: isHaveObscure,
          autofocus: isAutoTrue ?? false,
          keyboardType: inputType,
          textInputAction: textInputAction,
          onChanged: _onChanged,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: hintTextColor.withOpacity(0.7),
            ),
            filled: true,
            fillColor: textFieldBgColor,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: AppColors.mountainMist,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(
                color: AppColors.mountainMist,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: AppColors.mountainMist,
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getTextFieldTitle() {
    if (textFieldTitle.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Text(
              textFieldTitle,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.white.withOpacity(0.87),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 6),
            if (isRequired)
              Text(
                '*',
                style: TextStyle(
                  color: AppColors.white.withOpacity(0.87),
                ),
              ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }

  void _onChanged(String value) {
    if (onChanged != null) {
      onChanged?.call(value.trim());
    }
  }
}
