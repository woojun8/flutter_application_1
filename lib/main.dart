import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/header.dart';
import 'package:flutter_application_1/widgets/schedule_calendar.dart';
import 'package:flutter_application_1/widgets/schedule_card.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Header(),
                const SizedBox(
                  height: 40,
                ),
                const ScheduleCalendar(),
                const SizedBox(
                  height: 40,
                ),
                ScheduleCard(
                  schedule: 'DESIGN\nMEETING',
                  memberList: const ["ALEX", "HELENA", "NANA", "MEM1", "MEM2"],
                  bgColor: const Color.fromARGB(255, 253, 247, 113),
                  startTime: DateTime(2023, 06, 09, 11, 30),
                  endTime: DateTime(2023, 06, 09, 12, 20),
                ),
                const SizedBox(height: 10),
                ScheduleCard(
                  schedule: 'DAILY\nPROJECT',
                  memberList: const [
                    "ME",
                    "RICHARD",
                    "CIRY",
                    "MEM1",
                    "MEM2",
                    "MEM3",
                    "MEM4"
                  ],
                  bgColor: const Color.fromARGB(255, 149, 109, 200),
                  startTime: DateTime(2023, 06, 09, 12, 35),
                  endTime: DateTime(2023, 06, 09, 14, 10),
                ),
                const SizedBox(height: 10),
                ScheduleCard(
                  schedule: 'WEEKLY\nPLANNING',
                  memberList: const ["DEN", "NANA", "MARK", "MEM1"],
                  bgColor: const Color.fromARGB(255, 198, 237, 103),
                  startTime: DateTime(2023, 06, 09, 15, 00),
                  endTime: DateTime(2023, 06, 09, 16, 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
