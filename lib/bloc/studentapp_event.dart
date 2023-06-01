part of 'studentapp_bloc.dart';

@freezed
class StudentappEvent with _$StudentappEvent {
  factory StudentappEvent.fetchAllData() = FetchAllData;

  const factory StudentappEvent.addStudentData(StudentModel studentdata) =
      AddStudentData;

  factory StudentappEvent.fetchSpecificData() = FetchSpecificData;

  factory StudentappEvent.updateSpecificstudentData(
      StudentModel studentModel, int index) = UpdateSpecificstudentData;

  factory StudentappEvent.deleteSpecificstudentData(
      List<StudentModel> studentModel, int index) = DeleteSpecificstudentData;
  // factory StudentappEvent.rebuild() = Rebuild;
}
