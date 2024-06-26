import 'package:flutter/material.dart';
import 'staff_directory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Staff Directory',
      home: StaffDirectory(),
    );
  }
}
