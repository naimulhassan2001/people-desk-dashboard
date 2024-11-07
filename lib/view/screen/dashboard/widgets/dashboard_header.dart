import 'package:flutter/material.dart';
import 'package:people_desk/helpers/my_extension.dart';
import 'package:people_desk/view/component/text/common_text.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '7, November, Thursday',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 4),
          const Text(
            'Hello Md. Naim Mia, Welcome Back !',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.watch_later,
                                color: Colors.green,
                                size: 48,
                              ),
                              12.width,
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(text: "Today Working Period"),
                                  CommonText(
                                    text: "1 hr 24 min",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: Colors.red,
                                margin: EdgeInsets.symmetric(horizontal: 20),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(
                                      text: "Special Shift A (not for all)"),
                                  CommonText(
                                    text: "09:00 AM - 06:00 PM",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              20.width,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.watch_later,
                                color: Colors.green,
                                size: 48,
                              ),
                              12.width,
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(text: "Length of Service"),
                                  CommonText(
                                    text: "9 months 23 days",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: Colors.red,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(text: "Joining Date"),
                                  CommonText(
                                    text: "16 Jan, 2024",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                color: Colors.red,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(text: "Confirmation Date"),
                                  CommonText(
                                    text: "16 Jul, 2024",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
