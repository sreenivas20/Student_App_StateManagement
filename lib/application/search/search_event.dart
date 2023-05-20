part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchedStudentEvent(String value) = SearchedStudentEvent;
  const factory SearchEvent.clearSearchEvent() = ClearSearchEvent;

}