import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/screens/home/add_student_widget.dart';
import 'package:hive_db/screens/home/list_students_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudentList();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudents(),
            Expanded(child: ListStudents()),
          ],
        ),
      ),
    );
  }
}
