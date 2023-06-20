import 'package:flutter/widgets.dart';
import 'package:hive_db/db/model/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudent(StudentModel student) {
  studentListNotifier.value.add(student);
  print(student.toString());
  studentListNotifier.notifyListeners();
}
