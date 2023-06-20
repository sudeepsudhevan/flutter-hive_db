import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/db/model/data_model.dart';

class AddStudents extends StatelessWidget {
  AddStudents({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        TextFormField(
          controller: _nameController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Name'),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: _ageController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Age',
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: () {
            onAddStudentButtonPressed();
          },
          icon: const Icon(Icons.add),
          label: const Text('Add Student'),
        )
      ]),
    );
  }

  Future<void> onAddStudentButtonPressed() async {
    final _name = _nameController.text;
    final _age = _ageController.text;
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    // print('Name: $_name, Age: $_age');
    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
