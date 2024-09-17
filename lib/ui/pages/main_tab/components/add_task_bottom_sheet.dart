import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';

class AddTaskBottomSheet extends StatelessWidget {
  final TextEditingController taskTitleController;
  final TextEditingController taskDescriptionController;
  final VoidCallback onclickChooseTime;
  final VoidCallback onclickAddCategory;
  final VoidCallback onclickTaskPriority;
  final VoidCallback onclickSend;

  const AddTaskBottomSheet({
    super.key,
    required this.taskTitleController,
    required this.taskDescriptionController,
    required this.onclickChooseTime,
    required this.onclickAddCategory,
    required this.onclickTaskPriority,
    required this.onclickSend,
  });

  @override
  Widget build(BuildContext context) {
    final double heightDynamic = MediaQuery.of(context).size.height / 2.5;
    final double widthDynamic = MediaQuery.of(context).size.width / 4;
    return Container(
      height: heightDynamic,
      padding: EdgeInsets.symmetric(horizontal: 24),
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 24,
                      bottom: 14,
                    ),
                    child: Text(
                      LocaleKeys.home_addTask.locale,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white.withOpacity(0.87),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    controller: taskTitleController,
                    hintText: LocaleKeys.home_enterTaskTitle.locale,
                    isAutoTrue: true,
                    onChanged: (String text) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 14),
                    child: Text(
                      LocaleKeys.home_description.locale,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white.withOpacity(0.87),
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    controller: taskDescriptionController,
                    textInputAction: TextInputAction.done,
                    hintText: LocaleKeys.home_enterTaskDescription.locale,
                    onChanged: (String text) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Material(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.transparent,
                            child: InkWell(
                              radius: 40,
                              splashColor: Colors.white.withOpacity(0.3),
                              highlightColor: Colors.transparent,
                              onTap: () => onclickChooseTime.call(),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  AppAssets.icTimerPath,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Material(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.transparent,
                            child: InkWell(
                              radius: 40,
                              splashColor: Colors.white.withOpacity(0.3),
                              highlightColor: Colors.transparent,
                              onTap: () => onclickAddCategory.call(),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  AppAssets.icTagPath,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Material(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.transparent,
                            child: InkWell(
                              radius: 40,
                              splashColor: Colors.white.withOpacity(0.3),
                              highlightColor: Colors.transparent,
                              onTap: () => onclickTaskPriority.call(),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  AppAssets.icFlagPath,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Material(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.transparent,
                            child: InkWell(
                              radius: 40,
                              splashColor: Colors.white.withOpacity(0.3),
                              highlightColor: Colors.transparent,
                              onTap: () => onclickSend.call(),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  AppAssets.icSendPath,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
}
