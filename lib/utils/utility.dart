import 'package:want_to_do/export.dart';

final class Utility {
  Widget buildToast(String content) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: AppColors.crocusPurple.withOpacity(0.8),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      child: Text(
        content,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
