import 'package:flutter/material.dart';
import 'package:people_desk/helpers/my_extension.dart';
import 'package:people_desk/view/component/text/common_text.dart';

class ManagerSection extends StatelessWidget {
  final List<Map<String, String>> managers = [
    {
      'name': 'Al Shakib E Elahi',
      'role': 'Supervisor',
      'image': 'https://via.placeholder.com/50'
      // Replace with actual image URL or asset path
    },
    {
      'name': 'Md. Shehabuddin Tushar',
      'role': 'Dotted Supervisor',
      'image': 'https://via.placeholder.com/50'
    },
    {
      'name': 'Rakibul Islam (Shiku)',
      'role': 'Line Manager',
      'image': 'https://via.placeholder.com/50'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(top: 10, right: 10),
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
          const Text(
            'My Manager',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Column(
            children: managers.map((manager) {
              return ManagerTile(
                name: manager['name']!,
                role: manager['role']!,
                imageUrl: manager['image']!,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ManagerTile extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;

  const ManagerTile({
    required this.name,
    required this.role,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          12.width,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: name,
                fontSize: 14,
                textAlign: TextAlign.start,
              ),
              CommonText(
                text: role,
                fontSize: 10,
                textAlign: TextAlign.start,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LeaveBalanceSection extends StatelessWidget {
  final List<Map<String, dynamic>> leaveBalances = [
    {'type': 'Sick Leave', 'taken': 2, 'remaining': 9},
    {'type': 'Casual Leave', 'taken': 3, 'remaining': 6},
    {'type': 'Compensatory Leave', 'taken': 0, 'remaining': 0},
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Leave Balance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      'Type',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Taken',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Remaining',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('Sick Leave')),
                    DataCell(Text('2')),
                    DataCell(Text('9')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Casual Leave')),
                    DataCell(Text('3')),
                    DataCell(Text('6')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Compensatory Leave')),
                    DataCell(Text('0')),
                    DataCell(Text('0')),
                  ]),
                ],
              )
            ])));
  }
}
