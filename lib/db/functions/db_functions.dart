import 'package:flutter/widgets.dart';
import 'package:hive_db/db/model/data_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

Future<void> addStudent(StudentModel student) async {
  // studentListNotifier.value.add(student);

  // print(student.toString());

  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.add(student);

  studentListNotifier.notifyListeners();
}

Future<void> getAllStudentList() async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
}
