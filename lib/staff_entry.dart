import 'package:flutter/material.dart';

class StaffEntry extends StatelessWidget {
  final String name;
  final String qualification;
  final String role;
  final String phone;
  final String imagePath;

  StaffEntry({
    required this.name,
    required this.qualification,
    required this.role,
    required this.phone,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text('$name  [ $qualification ]'),
      subtitle: Text('$role\n$phone'),
    );
  }
}
