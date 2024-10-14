// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterId _$ChapterIdFromJson(Map<String, dynamic> json) {
  return _ChapterId.fromJson(json);
}

/// @nodoc
mixin _$ChapterId {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterIdCopyWith<ChapterId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterIdCopyWith<$Res> {
  factory $ChapterIdCopyWith(ChapterId value, $Res Function(ChapterId) then) =
      _$ChapterIdCopyWithImpl<$Res, ChapterId>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$ChapterIdCopyWithImpl<$Res, $Val extends ChapterId>
    implements $ChapterIdCopyWith<$Res> {
  _$ChapterIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterIdImplCopyWith<$Res>
    implements $ChapterIdCopyWith<$Res> {
  factory _$$ChapterIdImplCopyWith(
          _$ChapterIdImpl value, $Res Function(_$ChapterIdImpl) then) =
      __$$ChapterIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$ChapterIdImplCopyWithImpl<$Res>
    extends _$ChapterIdCopyWithImpl<$Res, _$ChapterIdImpl>
    implements _$$ChapterIdImplCopyWith<$Res> {
  __$$ChapterIdImplCopyWithImpl(
      _$ChapterIdImpl _value, $Res Function(_$ChapterIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ChapterIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterIdImpl extends _ChapterId {
  const _$ChapterIdImpl({this.id}) : super._();

  factory _$ChapterIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterIdImplFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'ChapterId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterIdImplCopyWith<_$ChapterIdImpl> get copyWith =>
      __$$ChapterIdImplCopyWithImpl<_$ChapterIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterIdImplToJson(
      this,
    );
  }
}

abstract class _ChapterId extends ChapterId {
  const factory _ChapterId({final int? id}) = _$ChapterIdImpl;
  const _ChapterId._() : super._();

  factory _ChapterId.fromJson(Map<String, dynamic> json) =
      _$ChapterIdImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$ChapterIdImplCopyWith<_$ChapterIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
