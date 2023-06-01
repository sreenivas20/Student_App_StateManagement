import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:student_app_project/db/model/boxes.dart';
import 'package:student_app_project/db/model/data_model.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchInitial()) {
    on<SearchedStudentEvent>((event, emit) {
      try {
        final student = StudentBox.getStudentData();

        List<StudentModel> studentList = student.values.toList();

        studentList = studentList
            .where((element) =>
                element.name.toLowerCase().contains(event.value.toLowerCase()))
            .toList();

        emit(SearchState.loaded(studentList));
      } catch (e) {
        log(e.toString());
      }
    });

    on<ClearSearchEvent>((event, emit) {
      emit(const SearchState.initial());
    });
  }
}
