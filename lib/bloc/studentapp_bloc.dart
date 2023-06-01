// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:student_app_project/db/model/data_model.dart';

// part 'studentapp_event.dart';
// part 'studentapp_state.dart';
// part 'studentapp_bloc.freezed.dart';



import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_app_project/db/model/boxes.dart';
import 'package:student_app_project/db/model/data_model.dart';

part 'studentapp_event.dart';
part 'studentapp_state.dart';
part 'studentapp_bloc.freezed.dart';

class StudentappBloc extends Bloc<StudentappEvent, StudentappState> {
  StudentappBloc() : super(const StudentappState.initial()) {
    on<FetchAllData>((event, emit) {
      try {
        final studentdata = StudentBox.getStudentData();
        List<StudentModel> students = studentdata.values.toList();
        emit(StudentappState.displayAllStudents(students));
      } catch (e) {
        log(e.toString());
      }
    });

    on<AddStudentData>((event, emit) {
      try {
        final studentBox = StudentBox.getStudentData();
        studentBox.add(event.studentdata);
        add(FetchAllData());
      } catch (e) {
        log(e.toString());
      }
    });

    on<UpdateSpecificstudentData>((event, emit) {
      try {
        final studentData = StudentBox.getStudentData();
        studentData.putAt(event.index, event.studentModel);
        add(FetchAllData());
      } catch (e) {
        log(e.toString());
      }
    });
    on<DeleteSpecificstudentData>((event, emit) {
      final studentDeletData = StudentBox.getStudentData();
      try {
        studentDeletData.deleteAt(event.index);
        add(FetchAllData());
      } catch (e) {
        log(e.toString());
      }
    });

    // on<Rebuild>((event, emit) {
    //   final studentData = StudentBox.getStudentData();
    //   emit(StudentappState.rebuildScreen(studentData as StudentModel));
    // });
  }
}


