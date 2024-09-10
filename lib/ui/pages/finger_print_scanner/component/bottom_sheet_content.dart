import 'package:want_to_do/export.dart';

class BottomSheetContent extends StatelessWidget {
  final Color messageColor;
  final Color iconColor;
  const BottomSheetContent({
    super.key,
    required this.messageColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final double heightDynamic = MediaQuery.of(context).size.height / 2.6;
    return Container(
      height: heightDynamic,
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.pagePaddingHorizontal,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Image.asset(
                  'assets/ic_fingerprint.png',
                  color: iconColor,
                ),
              ),
              Text(
                'Please click the button and hold your finger on the fingerprint scanner to verify your identity',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: messageColor.withOpacity(0.87),
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        title: 'Cancel',
                        titleColor: AppColors.crocusPurple,
                        backgroundColor: AppColors.darkGrey,
                        onClick: () {},
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomButton(
                        title: 'Use Finger Scanner',
                        onClick: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
