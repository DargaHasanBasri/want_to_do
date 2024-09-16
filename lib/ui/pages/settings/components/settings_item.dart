import 'package:want_to_do/export.dart';

class SettingsItem extends StatelessWidget {
  final String itemTitle;
  final String iconAddress;
  final VoidCallback onTap;
  const SettingsItem({
    super.key,
    required this.itemTitle,
    required this.iconAddress,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap.call(),
      child: Container(
        color: AppColors.backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 20),
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
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.white.withOpacity(0.87),
              ),
            ),
            Spacer(),
            Image.asset(AppAssets.icArrowBackRightPath),
          ],
        ),
      ),
    );
  }
}
