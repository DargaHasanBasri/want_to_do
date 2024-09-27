import 'package:want_to_do/export.dart';
import 'package:want_to_do/generated/locale_keys.g.dart';
import 'package:want_to_do/ui/pages/calendar/components/tasks_list_item.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        forceMaterialTransparency: true,
        title: Text(
          LocaleKeys.calendar.locale,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        SizedBox(height: 16),
        Container(
          width: double.infinity,
          color: AppColors.darkGrey,
          padding: EdgeInsets.all(40),
          child: Text(
            'Takvim',
            style: TextStyle(
              color: AppColors.white,
            ),
          ),
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: _todayAndCompleted(),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 40,
            padding: EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: (context, index) {
              return TasksListItem();
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 16);
            },
          ),
        ),
      ],
    );
  }

  Widget _todayAndCompleted() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.liver,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 10,
        ),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Today',
                onClick: () {},
              ),
            ),
            SizedBox(width: 32),
            Expanded(
              child: CustomButton(
                title: 'Completed',
                backgroundColor: AppColors.liver,
                borderColor: AppColors.mountainMist,
                onClick: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
