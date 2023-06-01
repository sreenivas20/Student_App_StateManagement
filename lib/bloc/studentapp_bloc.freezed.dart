// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'studentapp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentappEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllData,
    required TResult Function(StudentModel studentdata) addStudentData,
    required TResult Function() fetchSpecificData,
    required TResult Function(StudentModel studentModel, int index)
        updateSpecificstudentData,
    required TResult Function(List<StudentModel> studentModel, int index)
        deleteSpecificstudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllData,
    TResult? Function(StudentModel studentdata)? addStudentData,
    TResult? Function()? fetchSpecificData,
    TResult? Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult? Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllData,
    TResult Function(StudentModel studentdata)? addStudentData,
    TResult Function()? fetchSpecificData,
    TResult Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllData value) fetchAllData,
    required TResult Function(AddStudentData value) addStudentData,
    required TResult Function(FetchSpecificData value) fetchSpecificData,
    required TResult Function(UpdateSpecificstudentData value)
        updateSpecificstudentData,
    required TResult Function(DeleteSpecificstudentData value)
        deleteSpecificstudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllData value)? fetchAllData,
    TResult? Function(AddStudentData value)? addStudentData,
    TResult? Function(FetchSpecificData value)? fetchSpecificData,
    TResult? Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult? Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllData value)? fetchAllData,
    TResult Function(AddStudentData value)? addStudentData,
    TResult Function(FetchSpecificData value)? fetchSpecificData,
    TResult Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentappEventCopyWith<$Res> {
  factory $StudentappEventCopyWith(
          StudentappEvent value, $Res Function(StudentappEvent) then) =
      _$StudentappEventCopyWithImpl<$Res, StudentappEvent>;
}

/// @nodoc
class _$StudentappEventCopyWithImpl<$Res, $Val extends StudentappEvent>
    implements $StudentappEventCopyWith<$Res> {
  _$StudentappEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllDataCopyWith<$Res> {
  factory _$$FetchAllDataCopyWith(
          _$FetchAllData value, $Res Function(_$FetchAllData) then) =
      __$$FetchAllDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllDataCopyWithImpl<$Res>
    extends _$StudentappEventCopyWithImpl<$Res, _$FetchAllData>
    implements _$$FetchAllDataCopyWith<$Res> {
  __$$FetchAllDataCopyWithImpl(
      _$FetchAllData _value, $Res Function(_$FetchAllData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllData implements FetchAllData {
  _$FetchAllData();

  @override
  String toString() {
    return 'StudentappEvent.fetchAllData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllData,
    required TResult Function(StudentModel studentdata) addStudentData,
    required TResult Function() fetchSpecificData,
    required TResult Function(StudentModel studentModel, int index)
        updateSpecificstudentData,
    required TResult Function(List<StudentModel> studentModel, int index)
        deleteSpecificstudentData,
  }) {
    return fetchAllData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllData,
    TResult? Function(StudentModel studentdata)? addStudentData,
    TResult? Function()? fetchSpecificData,
    TResult? Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult? Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
  }) {
    return fetchAllData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllData,
    TResult Function(StudentModel studentdata)? addStudentData,
    TResult Function()? fetchSpecificData,
    TResult Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (fetchAllData != null) {
      return fetchAllData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllData value) fetchAllData,
    required TResult Function(AddStudentData value) addStudentData,
    required TResult Function(FetchSpecificData value) fetchSpecificData,
    required TResult Function(UpdateSpecificstudentData value)
        updateSpecificstudentData,
    required TResult Function(DeleteSpecificstudentData value)
        deleteSpecificstudentData,
  }) {
    return fetchAllData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllData value)? fetchAllData,
    TResult? Function(AddStudentData value)? addStudentData,
    TResult? Function(FetchSpecificData value)? fetchSpecificData,
    TResult? Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult? Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
  }) {
    return fetchAllData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllData value)? fetchAllData,
    TResult Function(AddStudentData value)? addStudentData,
    TResult Function(FetchSpecificData value)? fetchSpecificData,
    TResult Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (fetchAllData != null) {
      return fetchAllData(this);
    }
    return orElse();
  }
}

abstract class FetchAllData implements StudentappEvent {
  factory FetchAllData() = _$FetchAllData;
}

/// @nodoc
abstract class _$$AddStudentDataCopyWith<$Res> {
  factory _$$AddStudentDataCopyWith(
          _$AddStudentData value, $Res Function(_$AddStudentData) then) =
      __$$AddStudentDataCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel studentdata});
}

/// @nodoc
class __$$AddStudentDataCopyWithImpl<$Res>
    extends _$StudentappEventCopyWithImpl<$Res, _$AddStudentData>
    implements _$$AddStudentDataCopyWith<$Res> {
  __$$AddStudentDataCopyWithImpl(
      _$AddStudentData _value, $Res Function(_$AddStudentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentdata = null,
  }) {
    return _then(_$AddStudentData(
      null == studentdata
          ? _value.studentdata
          : studentdata // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$AddStudentData implements AddStudentData {
  const _$AddStudentData(this.studentdata);

  @override
  final StudentModel studentdata;

  @override
  String toString() {
    return 'StudentappEvent.addStudentData(studentdata: $studentdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentData &&
            (identical(other.studentdata, studentdata) ||
                other.studentdata == studentdata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentdata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStudentDataCopyWith<_$AddStudentData> get copyWith =>
      __$$AddStudentDataCopyWithImpl<_$AddStudentData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllData,
    required TResult Function(StudentModel studentdata) addStudentData,
    required TResult Function() fetchSpecificData,
    required TResult Function(StudentModel studentModel, int index)
        updateSpecificstudentData,
    required TResult Function(List<StudentModel> studentModel, int index)
        deleteSpecificstudentData,
  }) {
    return addStudentData(studentdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllData,
    TResult? Function(StudentModel studentdata)? addStudentData,
    TResult? Function()? fetchSpecificData,
    TResult? Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult? Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
  }) {
    return addStudentData?.call(studentdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllData,
    TResult Function(StudentModel studentdata)? addStudentData,
    TResult Function()? fetchSpecificData,
    TResult Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (addStudentData != null) {
      return addStudentData(studentdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllData value) fetchAllData,
    required TResult Function(AddStudentData value) addStudentData,
    required TResult Function(FetchSpecificData value) fetchSpecificData,
    required TResult Function(UpdateSpecificstudentData value)
        updateSpecificstudentData,
    required TResult Function(DeleteSpecificstudentData value)
        deleteSpecificstudentData,
  }) {
    return addStudentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllData value)? fetchAllData,
    TResult? Function(AddStudentData value)? addStudentData,
    TResult? Function(FetchSpecificData value)? fetchSpecificData,
    TResult? Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult? Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
  }) {
    return addStudentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllData value)? fetchAllData,
    TResult Function(AddStudentData value)? addStudentData,
    TResult Function(FetchSpecificData value)? fetchSpecificData,
    TResult Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (addStudentData != null) {
      return addStudentData(this);
    }
    return orElse();
  }
}

abstract class AddStudentData implements StudentappEvent {
  const factory AddStudentData(final StudentModel studentdata) =
      _$AddStudentData;

  StudentModel get studentdata;
  @JsonKey(ignore: true)
  _$$AddStudentDataCopyWith<_$AddStudentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSpecificDataCopyWith<$Res> {
  factory _$$FetchSpecificDataCopyWith(
          _$FetchSpecificData value, $Res Function(_$FetchSpecificData) then) =
      __$$FetchSpecificDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSpecificDataCopyWithImpl<$Res>
    extends _$StudentappEventCopyWithImpl<$Res, _$FetchSpecificData>
    implements _$$FetchSpecificDataCopyWith<$Res> {
  __$$FetchSpecificDataCopyWithImpl(
      _$FetchSpecificData _value, $Res Function(_$FetchSpecificData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSpecificData implements FetchSpecificData {
  _$FetchSpecificData();

  @override
  String toString() {
    return 'StudentappEvent.fetchSpecificData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSpecificData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllData,
    required TResult Function(StudentModel studentdata) addStudentData,
    required TResult Function() fetchSpecificData,
    required TResult Function(StudentModel studentModel, int index)
        updateSpecificstudentData,
    required TResult Function(List<StudentModel> studentModel, int index)
        deleteSpecificstudentData,
  }) {
    return fetchSpecificData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllData,
    TResult? Function(StudentModel studentdata)? addStudentData,
    TResult? Function()? fetchSpecificData,
    TResult? Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult? Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
  }) {
    return fetchSpecificData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllData,
    TResult Function(StudentModel studentdata)? addStudentData,
    TResult Function()? fetchSpecificData,
    TResult Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (fetchSpecificData != null) {
      return fetchSpecificData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllData value) fetchAllData,
    required TResult Function(AddStudentData value) addStudentData,
    required TResult Function(FetchSpecificData value) fetchSpecificData,
    required TResult Function(UpdateSpecificstudentData value)
        updateSpecificstudentData,
    required TResult Function(DeleteSpecificstudentData value)
        deleteSpecificstudentData,
  }) {
    return fetchSpecificData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllData value)? fetchAllData,
    TResult? Function(AddStudentData value)? addStudentData,
    TResult? Function(FetchSpecificData value)? fetchSpecificData,
    TResult? Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult? Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
  }) {
    return fetchSpecificData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllData value)? fetchAllData,
    TResult Function(AddStudentData value)? addStudentData,
    TResult Function(FetchSpecificData value)? fetchSpecificData,
    TResult Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (fetchSpecificData != null) {
      return fetchSpecificData(this);
    }
    return orElse();
  }
}

abstract class FetchSpecificData implements StudentappEvent {
  factory FetchSpecificData() = _$FetchSpecificData;
}

/// @nodoc
abstract class _$$UpdateSpecificstudentDataCopyWith<$Res> {
  factory _$$UpdateSpecificstudentDataCopyWith(
          _$UpdateSpecificstudentData value,
          $Res Function(_$UpdateSpecificstudentData) then) =
      __$$UpdateSpecificstudentDataCopyWithImpl<$Res>;
  @useResult
  $Res call({StudentModel studentModel, int index});
}

/// @nodoc
class __$$UpdateSpecificstudentDataCopyWithImpl<$Res>
    extends _$StudentappEventCopyWithImpl<$Res, _$UpdateSpecificstudentData>
    implements _$$UpdateSpecificstudentDataCopyWith<$Res> {
  __$$UpdateSpecificstudentDataCopyWithImpl(_$UpdateSpecificstudentData _value,
      $Res Function(_$UpdateSpecificstudentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentModel = null,
    Object? index = null,
  }) {
    return _then(_$UpdateSpecificstudentData(
      null == studentModel
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateSpecificstudentData implements UpdateSpecificstudentData {
  _$UpdateSpecificstudentData(this.studentModel, this.index);

  @override
  final StudentModel studentModel;
  @override
  final int index;

  @override
  String toString() {
    return 'StudentappEvent.updateSpecificstudentData(studentModel: $studentModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSpecificstudentData &&
            (identical(other.studentModel, studentModel) ||
                other.studentModel == studentModel) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentModel, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSpecificstudentDataCopyWith<_$UpdateSpecificstudentData>
      get copyWith => __$$UpdateSpecificstudentDataCopyWithImpl<
          _$UpdateSpecificstudentData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllData,
    required TResult Function(StudentModel studentdata) addStudentData,
    required TResult Function() fetchSpecificData,
    required TResult Function(StudentModel studentModel, int index)
        updateSpecificstudentData,
    required TResult Function(List<StudentModel> studentModel, int index)
        deleteSpecificstudentData,
  }) {
    return updateSpecificstudentData(studentModel, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllData,
    TResult? Function(StudentModel studentdata)? addStudentData,
    TResult? Function()? fetchSpecificData,
    TResult? Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult? Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
  }) {
    return updateSpecificstudentData?.call(studentModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllData,
    TResult Function(StudentModel studentdata)? addStudentData,
    TResult Function()? fetchSpecificData,
    TResult Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (updateSpecificstudentData != null) {
      return updateSpecificstudentData(studentModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllData value) fetchAllData,
    required TResult Function(AddStudentData value) addStudentData,
    required TResult Function(FetchSpecificData value) fetchSpecificData,
    required TResult Function(UpdateSpecificstudentData value)
        updateSpecificstudentData,
    required TResult Function(DeleteSpecificstudentData value)
        deleteSpecificstudentData,
  }) {
    return updateSpecificstudentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllData value)? fetchAllData,
    TResult? Function(AddStudentData value)? addStudentData,
    TResult? Function(FetchSpecificData value)? fetchSpecificData,
    TResult? Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult? Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
  }) {
    return updateSpecificstudentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllData value)? fetchAllData,
    TResult Function(AddStudentData value)? addStudentData,
    TResult Function(FetchSpecificData value)? fetchSpecificData,
    TResult Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (updateSpecificstudentData != null) {
      return updateSpecificstudentData(this);
    }
    return orElse();
  }
}

abstract class UpdateSpecificstudentData implements StudentappEvent {
  factory UpdateSpecificstudentData(
          final StudentModel studentModel, final int index) =
      _$UpdateSpecificstudentData;

  StudentModel get studentModel;
  int get index;
  @JsonKey(ignore: true)
  _$$UpdateSpecificstudentDataCopyWith<_$UpdateSpecificstudentData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSpecificstudentDataCopyWith<$Res> {
  factory _$$DeleteSpecificstudentDataCopyWith(
          _$DeleteSpecificstudentData value,
          $Res Function(_$DeleteSpecificstudentData) then) =
      __$$DeleteSpecificstudentDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StudentModel> studentModel, int index});
}

/// @nodoc
class __$$DeleteSpecificstudentDataCopyWithImpl<$Res>
    extends _$StudentappEventCopyWithImpl<$Res, _$DeleteSpecificstudentData>
    implements _$$DeleteSpecificstudentDataCopyWith<$Res> {
  __$$DeleteSpecificstudentDataCopyWithImpl(_$DeleteSpecificstudentData _value,
      $Res Function(_$DeleteSpecificstudentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentModel = null,
    Object? index = null,
  }) {
    return _then(_$DeleteSpecificstudentData(
      null == studentModel
          ? _value._studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteSpecificstudentData implements DeleteSpecificstudentData {
  _$DeleteSpecificstudentData(final List<StudentModel> studentModel, this.index)
      : _studentModel = studentModel;

  final List<StudentModel> _studentModel;
  @override
  List<StudentModel> get studentModel {
    if (_studentModel is EqualUnmodifiableListView) return _studentModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentModel);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'StudentappEvent.deleteSpecificstudentData(studentModel: $studentModel, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSpecificstudentData &&
            const DeepCollectionEquality()
                .equals(other._studentModel, _studentModel) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studentModel), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSpecificstudentDataCopyWith<_$DeleteSpecificstudentData>
      get copyWith => __$$DeleteSpecificstudentDataCopyWithImpl<
          _$DeleteSpecificstudentData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllData,
    required TResult Function(StudentModel studentdata) addStudentData,
    required TResult Function() fetchSpecificData,
    required TResult Function(StudentModel studentModel, int index)
        updateSpecificstudentData,
    required TResult Function(List<StudentModel> studentModel, int index)
        deleteSpecificstudentData,
  }) {
    return deleteSpecificstudentData(studentModel, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllData,
    TResult? Function(StudentModel studentdata)? addStudentData,
    TResult? Function()? fetchSpecificData,
    TResult? Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult? Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
  }) {
    return deleteSpecificstudentData?.call(studentModel, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllData,
    TResult Function(StudentModel studentdata)? addStudentData,
    TResult Function()? fetchSpecificData,
    TResult Function(StudentModel studentModel, int index)?
        updateSpecificstudentData,
    TResult Function(List<StudentModel> studentModel, int index)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (deleteSpecificstudentData != null) {
      return deleteSpecificstudentData(studentModel, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllData value) fetchAllData,
    required TResult Function(AddStudentData value) addStudentData,
    required TResult Function(FetchSpecificData value) fetchSpecificData,
    required TResult Function(UpdateSpecificstudentData value)
        updateSpecificstudentData,
    required TResult Function(DeleteSpecificstudentData value)
        deleteSpecificstudentData,
  }) {
    return deleteSpecificstudentData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllData value)? fetchAllData,
    TResult? Function(AddStudentData value)? addStudentData,
    TResult? Function(FetchSpecificData value)? fetchSpecificData,
    TResult? Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult? Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
  }) {
    return deleteSpecificstudentData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllData value)? fetchAllData,
    TResult Function(AddStudentData value)? addStudentData,
    TResult Function(FetchSpecificData value)? fetchSpecificData,
    TResult Function(UpdateSpecificstudentData value)?
        updateSpecificstudentData,
    TResult Function(DeleteSpecificstudentData value)?
        deleteSpecificstudentData,
    required TResult orElse(),
  }) {
    if (deleteSpecificstudentData != null) {
      return deleteSpecificstudentData(this);
    }
    return orElse();
  }
}

abstract class DeleteSpecificstudentData implements StudentappEvent {
  factory DeleteSpecificstudentData(
          final List<StudentModel> studentModel, final int index) =
      _$DeleteSpecificstudentData;

  List<StudentModel> get studentModel;
  int get index;
  @JsonKey(ignore: true)
  _$$DeleteSpecificstudentDataCopyWith<_$DeleteSpecificstudentData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentappState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> students) displayAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> students)? displayAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> students)? displayAllStudents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentInitial value) initial,
    required TResult Function(DisplayAllStudents value) displayAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudentInitial value)? initial,
    TResult? Function(DisplayAllStudents value)? displayAllStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentInitial value)? initial,
    TResult Function(DisplayAllStudents value)? displayAllStudents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentappStateCopyWith<$Res> {
  factory $StudentappStateCopyWith(
          StudentappState value, $Res Function(StudentappState) then) =
      _$StudentappStateCopyWithImpl<$Res, StudentappState>;
}

/// @nodoc
class _$StudentappStateCopyWithImpl<$Res, $Val extends StudentappState>
    implements $StudentappStateCopyWith<$Res> {
  _$StudentappStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StudentInitialCopyWith<$Res> {
  factory _$$StudentInitialCopyWith(
          _$StudentInitial value, $Res Function(_$StudentInitial) then) =
      __$$StudentInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentInitialCopyWithImpl<$Res>
    extends _$StudentappStateCopyWithImpl<$Res, _$StudentInitial>
    implements _$$StudentInitialCopyWith<$Res> {
  __$$StudentInitialCopyWithImpl(
      _$StudentInitial _value, $Res Function(_$StudentInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StudentInitial implements StudentInitial {
  const _$StudentInitial();

  @override
  String toString() {
    return 'StudentappState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudentInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> students) displayAllStudents,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> students)? displayAllStudents,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> students)? displayAllStudents,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentInitial value) initial,
    required TResult Function(DisplayAllStudents value) displayAllStudents,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudentInitial value)? initial,
    TResult? Function(DisplayAllStudents value)? displayAllStudents,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentInitial value)? initial,
    TResult Function(DisplayAllStudents value)? displayAllStudents,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StudentInitial implements StudentappState {
  const factory StudentInitial() = _$StudentInitial;
}

/// @nodoc
abstract class _$$DisplayAllStudentsCopyWith<$Res> {
  factory _$$DisplayAllStudentsCopyWith(_$DisplayAllStudents value,
          $Res Function(_$DisplayAllStudents) then) =
      __$$DisplayAllStudentsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StudentModel> students});
}

/// @nodoc
class __$$DisplayAllStudentsCopyWithImpl<$Res>
    extends _$StudentappStateCopyWithImpl<$Res, _$DisplayAllStudents>
    implements _$$DisplayAllStudentsCopyWith<$Res> {
  __$$DisplayAllStudentsCopyWithImpl(
      _$DisplayAllStudents _value, $Res Function(_$DisplayAllStudents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_$DisplayAllStudents(
      null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ));
  }
}

/// @nodoc

class _$DisplayAllStudents implements DisplayAllStudents {
  _$DisplayAllStudents(final List<StudentModel> students)
      : _students = students;

  final List<StudentModel> _students;
  @override
  List<StudentModel> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'StudentappState.displayAllStudents(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayAllStudents &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayAllStudentsCopyWith<_$DisplayAllStudents> get copyWith =>
      __$$DisplayAllStudentsCopyWithImpl<_$DisplayAllStudents>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<StudentModel> students) displayAllStudents,
  }) {
    return displayAllStudents(students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<StudentModel> students)? displayAllStudents,
  }) {
    return displayAllStudents?.call(students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<StudentModel> students)? displayAllStudents,
    required TResult orElse(),
  }) {
    if (displayAllStudents != null) {
      return displayAllStudents(students);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentInitial value) initial,
    required TResult Function(DisplayAllStudents value) displayAllStudents,
  }) {
    return displayAllStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudentInitial value)? initial,
    TResult? Function(DisplayAllStudents value)? displayAllStudents,
  }) {
    return displayAllStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentInitial value)? initial,
    TResult Function(DisplayAllStudents value)? displayAllStudents,
    required TResult orElse(),
  }) {
    if (displayAllStudents != null) {
      return displayAllStudents(this);
    }
    return orElse();
  }
}

abstract class DisplayAllStudents implements StudentappState {
  factory DisplayAllStudents(final List<StudentModel> students) =
      _$DisplayAllStudents;

  List<StudentModel> get students;
  @JsonKey(ignore: true)
  _$$DisplayAllStudentsCopyWith<_$DisplayAllStudents> get copyWith =>
      throw _privateConstructorUsedError;
}
