import 'package:flutter/material.dart';

class ScheduleCalendar extends StatefulWidget {
  const ScheduleCalendar({
    super.key,
  });

  @override
  State<ScheduleCalendar> createState() => _ScheduleCalendarState();
}

class _ScheduleCalendarState extends State<ScheduleCalendar> {
  final weekdayList = [
    "SUNDAY",
    "MONDAY",
    "TUESDAY",
    "WEDNESDAY",
    "THURSDAY",
    "FRIDAY",
    "SATURDAY"
  ];
  final dayFontStyle = TextStyle(
    color: Colors.white.withOpacity(0.5),
    fontSize: 40,
  );

  late DateTime timeNow;
  late List<int> daysList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timeNow = DateTime.now();

    for (var i = 0; i < 10; i++) {
      daysList.add(timeNow.add(Duration(days: i + 1)).day);
    }

    print(daysList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${weekdayList[timeNow.weekday]} ${timeNow.day}',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 15,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Text(
                'TODAY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const Text(
                'ㆍ',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 40,
                ),
              ),
              Row(
                children: [
                  for (var day in daysList)
                    Text(
                      "$day\t\t",
                      style: dayFontStyle,
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
