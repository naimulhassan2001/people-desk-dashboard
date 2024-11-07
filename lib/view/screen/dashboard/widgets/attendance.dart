import 'package:flutter/material.dart';
import 'package:people_desk/helpers/my_extension.dart';
import 'package:people_desk/utils/app_colors.dart';
import 'package:people_desk/view/component/text/common_text.dart';
import 'package:people_desk/view/screen/dashboard/widgets/dashboard_header.dart';
import 'package:table_calendar/table_calendar.dart';

class Attendance extends StatelessWidget {
  Map<DateTime, String> attendance = {
    DateTime(2024, 11, 4): 'Present',
    DateTime(2024, 11, 5): 'Present',
    DateTime(2024, 11, 6): 'Absent',
    DateTime(2024, 11, 7): 'Present',
    // Add more dates as needed
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      padding: const EdgeInsets.all(16.0),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Attendance Calendar',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'November 2024',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left: 6),
                    width: 2,
                    color: Colors.grey,
                  ),
                  const AttendanceSummary(label: 'Payable Days', count: 7),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left: 6),
                    width: 2,
                    color: Colors.green,
                  ),
                  const AttendanceSummary(
                      label: 'Present', count: 5, color: Colors.green),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left: 6),
                    width: 2,
                    color: Colors.orange,
                  ),
                  const AttendanceSummary(
                      label: 'Late', count: 0, color: Colors.orange),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left: 6),
                    width: 2,
                    color: Colors.purpleAccent,
                  ),
                  const AttendanceSummary(
                      label: 'Movement', count: 0, color: Colors.purple),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 6),
                    width: 2,
                    color: Colors.purple,
                  ),
                  const AttendanceSummary(
                      label: 'Leave', count: 0, color: Colors.blue),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(left: 6),
                    width: 2,
                    color: Colors.red,
                  ),
                  AttendanceSummary(
                      label: 'Absent', count: 1, color: Colors.red),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: CustomCalendar(),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: AttendanceLog(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AttendanceSummary extends StatelessWidget {
  final String label;
  final int count;
  final Color? color;

  const AttendanceSummary(
      {required this.label, required this.count, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        children: [
          Text(
            count.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color ?? Colors.black,
            ),
          ),
          SizedBox(width: 2),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class AttendanceLog extends StatelessWidget {
  final List<Map<String, dynamic>> logs = [
    {
      'date': '07 Nov, 2024',
      'duration': '0 hr 47 min',
      'checkIn': '09:09 AM',
      'checkOut': ''
    },
    {
      'date': '06 Nov, 2024',
      'duration': '',
      'checkIn': '06:31 PM',
      'checkOut': ''
    },
    {
      'date': '05 Nov, 2024',
      'duration': '9 hr 22 min',
      'checkIn': '09:10 AM',
      'checkOut': '06:32 PM'
    },
    {
      'date': '04 Nov, 2024',
      'duration': '',
      'checkIn': '09:07 AM',
      'checkOut': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: logs.length,
      itemBuilder: (context, index) {
        var log = logs[index];
        return Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.withOpacity(0.2))),
          child: Column(
            children: [
              Row(
                children: [
                  const CommonText(
                    text: "07 Nov, 2024",
                    fontSize: 14,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      margin: const EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                          color: Color(0xFFEAECF0),
                          borderRadius: BorderRadius.circular(12)),
                      child: const CommonText(
                        text: "3 hr 24 min",
                        fontSize: 10,
                      )),
                ],
              ),
              8.height,
              Row(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.north,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: "Check In",
                            fontSize: 12,
                            color: Colors.blue,
                          ),
                          CommonText(
                            text: "09:09 AM",
                            fontSize: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                  16.width,
                  const Row(
                    children: [
                      Icon(
                        Icons.south,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: "Check Out",
                            fontSize: 12,
                            color: Colors.orange,
                          ),
                          CommonText(
                            text: "06:30 PM",
                            fontSize: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class LeaveBalance extends StatelessWidget {
  final List<Map<String, dynamic>> leaveBalances = [
    {'type': 'Sick Leave', 'taken': 2, 'remaining': 9},
    {'type': 'Casual Leave', 'taken': 3, 'remaining': 6},
    {'type': 'Compensatory Leave', 'taken': 0, 'remaining': 0},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(top: 8, right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1),
            ),
          ],
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Leave Balance',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800]),
          ),
          DataTable(
            dataTextStyle: const TextStyle(fontSize: 12),
            columns: [
              DataColumn(
                label: Text(
                  'Type',
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Taken',
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Remaining',
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: leaveBalances.map((leave) {
              return DataRow(
                cells: [
                  DataCell(Text(leave['type'],
                      style: TextStyle(color: Colors.grey[800]))),
                  DataCell(Text(leave['taken'].toString(),
                      style: TextStyle(color: Colors.grey[800]))),
                  DataCell(Text(leave['remaining'].toString(),
                      style: TextStyle(color: Colors.grey[800]))),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class CustomCalendar extends StatefulWidget {
  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  Map<DateTime, String> attendance = {
    DateTime(2024, 11, 4): 'Present',
    DateTime(2024, 11, 5): 'Present',
    DateTime(2024, 11, 6): 'Absent',
    DateTime(2024, 11, 7): 'Present',
    // Add more dates as needed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableCalendar(
        firstDay: DateTime(1990),
        lastDay: DateTime(2100),
        onFormatChanged: (format) => print(format),
        focusedDay: DateTime.now(),
        calendarFormat: CalendarFormat.month,
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, date, _) {
            int day = date.day;

            String label = "present";

            if (day == 1 ||
                day == 2 ||
                day == 3 ||
                day == 4 ||
                day == 5 ||
                day == 6 ||
                day == 7) {
              label == "present";
            } else {
              label = "";
            }
            print(date);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  date.day.toString(),
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: label.isNotEmpty
                      ? const EdgeInsets.symmetric(horizontal: 8, vertical: 2)
                      : const EdgeInsets.symmetric(),
                  decoration: BoxDecoration(
                    color: label == 'present'
                        ? Colors.green.withOpacity(0.1)
                        : label == 'absent'
                            ? Colors.red.shade100
                            : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    label,
                    style: TextStyle(
                      color: label != 'Present' ? Colors.green : Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
