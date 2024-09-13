import 'package:want_to_do/export.dart';

class AddTaskBottomSheet extends StatelessWidget {
  final TextEditingController taskTitleController;
  const AddTaskBottomSheet({
    super.key,
    required this.taskTitleController,
  });

  @override
  Widget build(BuildContext context) {
    final double heightDynamic = MediaQuery.of(context).size.height / 2.5;
    return Container(
      height: heightDynamic,
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 14),
              child: Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white.withOpacity(0.87),
                ),
              ),
            ),
            CustomTextFormField(
              controller: taskTitleController,
              hintText: 'Enter task title',
              isAutoTrue: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 14),
              child: Text(
                'Description',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white.withOpacity(0.87),
                ),
              ),
            ),
            CustomTextFormField(
              controller: taskTitleController,
              textInputAction: TextInputAction.done,
              hintText: 'Enter task description',
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
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            'assets/images/ic_timer.png',
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
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            'assets/images/ic_tag.png',
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
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            'assets/images/ic_flag.png',
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
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            'assets/images/ic_send.png',
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
    );
  }
}
