import 'package:want_to_do/export.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    Color? backgroundColor,
    Color? titleColor,
    Color? borderColor,
    String? title,
    String? iconLogoAddress,
    double? borderRadius,
    VoidCallback? onClick,
  })  : title = title ?? 'NEXT',
        iconLogoAddress = iconLogoAddress ?? '',
        backgroundColor = backgroundColor ?? AppColors.crocusPurple,
        titleColor = titleColor ?? AppColors.white,
        borderColor = borderColor ?? Colors.transparent,
        borderRadius = borderRadius ?? 4.0,
        onClick = onClick ?? (() {});
  final Color? backgroundColor;
  final Color? titleColor;
  final String title;
  final String iconLogoAddress;
  final VoidCallback? onClick;
  final double? borderRadius;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 4.0),
      child: Material(
        color: borderColor ?? Colors.transparent,
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
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
              borderRadius: BorderRadius.circular(borderRadius ?? 4.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getIconLogo(),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getIconLogo() {
    if (iconLogoAddress.isNotEmpty) {
      return Padding(
        padding: const EdgeInsets.only(right: 14),
        child: Image.asset(
          iconLogoAddress,
          width: 24,
          height: 24,
        ),
      );
    } else {
      return SizedBox();
    }
  }
}
