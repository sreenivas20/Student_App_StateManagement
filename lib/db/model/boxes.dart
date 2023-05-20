import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_app_project/db/model/data_model.dart';

class StudentBox {
  static Box<StudentModel> getStudentData() =>
      Hive.box<StudentModel>('student_db');
}
