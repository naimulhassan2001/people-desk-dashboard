import 'package:flutter/material.dart';
import 'package:people_desk/view/screen/dashboard/widgets/attendance.dart';
import 'package:people_desk/view/screen/dashboard/widgets/dashboard_header.dart';
import 'package:people_desk/view/screen/dashboard/widgets/drawer.dart';
import 'package:people_desk/view/screen/dashboard/widgets/manage_scetion.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              DrawerMenu(),
              Expanded(
                  child: Column(
                children: [
                  const DashboardHeader(),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: Attendance())),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [ManagerSection(), LeaveBalance()],
                            ))
                      ],
                    ),
                  )
                ],
              ))
            ],
          ))
        ],
      ),


    );
  }
}
