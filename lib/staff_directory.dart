import 'package:flutter/material.dart';
import 'staff_entry.dart';

class StaffDirectory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Staff Directory'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/img_1.jpg'),
              ),
              title: Text('Govinda khadka  [BSC.IT]'),
              subtitle: Text('Principal\n9851023323'),
            ),
            ExpansionTile(
              title: Text('Exam Department'),
              backgroundColor: Colors.lightBlueAccent,
              children: [
                StaffEntry(
                  name: 'Govinda khadka',
                  qualification: 'BSC.IT',
                  role: 'Head of Department (HOD)',
                  phone: '9851023323',
                  imagePath: 'assets/img_1.jpg',
                ),
                StaffEntry(
                  name: 'Binita khadka',
                  qualification: 'BCA',
                  role: 'Head of Department (HOD)',
                  phone: '9977662244',
                  imagePath: 'assets/img_2.jpg',
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Teachers'),
              backgroundColor: Colors.lightBlueAccent,
              children: List.generate(8, (index) {
                return StaffEntry(
                  name: 'Aayush khadka',
                  qualification: 'Computer Science',
                  role: 'Head of Department (HOD)',
                  phone: '9861893491',
                  imagePath: 'assets/img_3.jpg',
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
