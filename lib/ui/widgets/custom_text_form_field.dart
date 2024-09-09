import 'package:flutter/material.dart';
import 'package:want_to_do/utils/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    required this.controller,
    super.key,
    String? hintText,
    String? textFieldName,
    double? borderRadius,
    bool? multiline,
    TextInputType? inputType,
    Color? textFieldBgColor,
    this.isEnabled,
    this.onChanged,
    this.onObscureChanged,
    bool? isAutoTrue,
    this.isRequired = false,
    this.isHaveObscure = false,
  })  : inputType = inputType ?? TextInputType.text,
        textFieldBgColor = textFieldBgColor ?? Colors.transparent,
        textFieldTitle = textFieldName ?? '',
        hintText = hintText ?? '',
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
  final bool? isAutoTrue;
  final bool isRequired;
  final bool isHaveObscure;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getTextFieldTitle(),
        TextFormField(
          controller: widget.controller,
          obscureText: widget.isHaveObscure,
          autofocus: widget.isAutoTrue ?? false,
          keyboardType: widget.inputType,
          onChanged: _onChanged,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.davyGrey,
            ),
            filled: true,
            fillColor: AppColors.darkJungleGreen,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: AppColors.mountainMist,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: const BorderSide(
                color: AppColors.mountainMist,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
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
    if (widget.textFieldTitle.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            Text(
              widget.textFieldTitle,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.white.withOpacity(0.87),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 6),
            if (widget.isRequired)
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
    if (widget.onChanged != null) {
      widget.onChanged?.call(value.trim());
    }
  }
}
