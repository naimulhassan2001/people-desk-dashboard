import 'package:flutter/material.dart';
import 'package:people_desk/helpers/my_extension.dart';
import 'package:people_desk/utils/app_images.dart';
import 'package:people_desk/view/component/image/common_image.dart';

import '../../../../utils/app_colors.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 30,
              child: ClipOval(
                child: CommonImage(
                  imageSrc: AppImages.bdCalling,
                  imageType: ImageType.png,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ),
          buildMenuItem(context, 'Dashboard', isActive: true),
          buildMenuItem(context, 'About Me'),
          buildMenuItem(context, 'Time Management'),
          buildMenuItem(context, 'Leave And Movement'),
          buildMenuItem(context, 'Loan & Financial Aid'),
          buildMenuItem(context, 'Asset'),
          buildMenuItem(context, 'Expense'),
          buildMenuItem(context, 'Separation'),
          buildMenuItem(context, 'PaySlip'),
          buildMenuItem(context, 'Salary Certificate'),
          buildMenuItem(context, 'Training & Development'),
        ],
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, String title,
      {bool isActive = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.green : Colors.black,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
