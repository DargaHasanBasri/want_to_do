import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            AppAssets.imgCheckListPath,
          ),
        ),
        Text(
          LocaleKeys.home_emptyListTitle.locale,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.white.withOpacity(0.87),
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
        Text(
          LocaleKeys.home_emptyListMsg.locale,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.white.withOpacity(0.87),
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ],
    );
  }
}
