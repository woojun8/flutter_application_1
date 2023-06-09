import 'package:flutter/material.dart';

class ScheduleCard extends StatefulWidget {
  final String schedule;
  final List<String> memberList;
  final Color bgColor;
  final DateTime startTime, endTime;

  const ScheduleCard({
    super.key,
    required this.schedule,
    required this.memberList,
    required this.bgColor,
    required this.startTime,
    required this.endTime,
  });

  @override
  State<ScheduleCard> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {
  final _blackColor = const Color(0xFF1F2123);
  List<String> printMemberList = [];

  @override
  void initState() {
    super.initState();
    
    printMemberList.addAll(widget.memberList);
    int length = printMemberList.length;
    if (4 <= length) {
      printMemberList.removeRange(3, length);
      print(printMemberList);
      printMemberList.add("+${length - 3}");
    }

    print(widget.startTime);
    print(widget.endTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.startTime.hour.toString(),
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.startTime.minute.toString(),
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "│",
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 15,
                  ),
                ),
                Text(
                  widget.endTime.hour.toString(),
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.endTime.minute.toString(),
                  style: TextStyle(
                    color: _blackColor,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.schedule,
                  style: TextStyle(
                      color: _blackColor,
                      fontSize: 55,
                      height: 0.9,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    for (var member in printMemberList)
                      member == "ME"
                          ? Text(
                              "$member        ",
                              style: TextStyle(
                                color: _blackColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Text(
                              "$member        ",
                              style: TextStyle(
                                color: _blackColor.withOpacity(0.5),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                  ],
                ),
                // Text(
                //   member,
                //   style: TextStyle(
                //     color: _blackColor,
                //     fontSize: 15,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
