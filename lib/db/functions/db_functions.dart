// //import 'dart:ffi';

// // import 'dart:js';

// import 'package:flutter/cupertino.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:student_app_project/db/model/data_model.dart';
// import 'package:flutter/material.dart';

// ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

// Future<void> addStudent(StudentModel value) async {
//   final studentDataB = await Hive.openBox<StudentModel>('student_db1');
//   final _id = await studentDataB.add(value);
//   value.id = _id;

// //  getAllStudents();
//   studentListNotifier.value.add(value);
//   // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
//   studentListNotifier.notifyListeners();
// }

// Future<void> getAllStudents() async {
//   final studentDataB = await Hive.openBox<StudentModel>('student_db1');
//   studentListNotifier.value.clear();
//   studentListNotifier.value.addAll(studentDataB.values);
//   // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
//   studentListNotifier.notifyListeners();
// }

// Future<void> deleteStudent(int id) async {
//   final studentDataB = await Hive.openBox<StudentModel>('student_db1');
//   studentDataB.deleteAt(id);
//   getAllStudents();
// }

// Future<void> updateNew(StudentModel value, int id) async {
//   final studentDataB = await Hive.openBox<StudentModel>('student_db1');
//   // Hive.box('student_db').putAt(index );
//   studentDataB.putAt(id, value);
//   studentListNotifier.value.clear();
//   // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
//   studentListNotifier.notifyListeners();
// }
