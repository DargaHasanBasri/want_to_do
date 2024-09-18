import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class BottomSheetChangeImage extends StatelessWidget {
  final VoidCallback onClick;
  const BottomSheetChangeImage({
    super.key,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    final double heightDynamic = MediaQuery.of(context).size.height / 2.6;
    final double widthDynamic = MediaQuery.of(context).size.width / 4;
    return Container(
      height: heightDynamic,
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 6),
          Container(
            height: 6,
            width: widthDynamic,
            decoration: BoxDecoration(
              color: AppColors.lavenderBlue,
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Text(
                        LocaleKeys.profile_changeAccountImage.locale,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white.withOpacity(0.87),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomDivider(borderRadius: 4),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: _buildTextButton(
                      title: LocaleKeys.profile_tackPicture.locale,
                      onTap: () => onClick,
                    ),
                  ),
                  _buildTextButton(
                    title: LocaleKeys.profile_importFromGallery.locale,
                    onTap: () => onClick,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: _buildTextButton(
                      title: LocaleKeys.profile_importFromGoogleDrive.locale,
                      onTap: () => onClick,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextButton({
    required String title,
    required VoidCallback onTap,
  }) {
    return ClipRRect(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onTap.call(),
          child: Ink(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.white.withOpacity(0.87),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
