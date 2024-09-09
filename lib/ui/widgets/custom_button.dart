import 'package:flutter/material.dart';
import 'package:want_to_do/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    Color? backgroundColor,
    Color? titleColor,
    Color? borderColor,
    String? title,
    double? borderRadius,
    VoidCallback? onClick,
  })  : title = title ?? 'NEXT',
        backgroundColor = backgroundColor ?? AppColors.crocusPurple,
        titleColor = titleColor ?? AppColors.white,
        borderColor = borderColor ?? Colors.transparent,
        borderRadius = borderRadius ?? 4.0,
        onClick = onClick ?? (() {});
  final Color? backgroundColor;
  final Color? titleColor;
  final String title;
  final VoidCallback? onClick;
  final double? borderRadius;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 4.0),
      child: Material(
        child: InkWell(
          onTap: () => onClick?.call(),
          splashColor: AppColors.darkOrchid.withOpacity(0.5),
          child: Ink(
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(
                color: borderColor ?? Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 4.0),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
