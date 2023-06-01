part of 'studentapp_bloc.dart';

@freezed
class StudentappState with _$StudentappState {
  const factory StudentappState.initial() = StudentInitial;

  factory StudentappState.displayAllStudents(List<StudentModel> students) =
      DisplayAllStudents;

  // factory StudentappState.displaySpecificData(StudentModel student) =
  // DisplaySpecificData;
  // factory StudentappState.rebuildScreen(StudentModel studentModel) = RebuildScreen;
}
