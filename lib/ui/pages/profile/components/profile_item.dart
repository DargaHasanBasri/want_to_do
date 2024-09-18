import 'package:want_to_do/export.dart';

class ProfileItem extends StatelessWidget {
  final String itemTitle;
  final String iconAddress;
  final bool? isLogOut;
  final VoidCallback onTap;

  ProfileItem({
    super.key,
    required this.itemTitle,
    required this.iconAddress,
    required this.onTap,
    bool? isLogOut,
  }) : isLogOut = isLogOut ?? false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      child: Container(
        color: AppColors.backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Image.asset(
              iconAddress,
              width: 24,
              height: 24,
            ),
            SizedBox(width: 10),
            Text(
              itemTitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: (isLogOut ?? false)
                    ? AppColors.lightRed
                    : AppColors.white.withOpacity(0.87),
              ),
            ),
            Spacer(),
            (isLogOut ?? false)
                ? SizedBox()
                : Image.asset(AppAssets.icArrowBackRightPath),
          ],
        ),
      ),
    );
  }
}
