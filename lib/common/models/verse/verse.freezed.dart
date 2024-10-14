// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Verse _$VerseFromJson(Map<String, dynamic> json) {
  return _Verse.fromJson(json);
}

/// @nodoc
mixin _$Verse {
  int get id => throw _privateConstructorUsedError;
  int get chapterId => throw _privateConstructorUsedError;
  int get verseId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  Book get book => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseCopyWith<Verse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) then) =
      _$VerseCopyWithImpl<$Res, Verse>;
  @useResult
  $Res call(
      {int id,
      int chapterId,
      int verseId,
      String text,
      Book book,
      bool isFavorite});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$VerseCopyWithImpl<$Res, $Val extends Verse>
    implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterId = null,
    Object? verseId = null,
    Object? text = null,
    Object? book = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: null == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as int,
      verseId: null == verseId
          ? _value.verseId
          : verseId // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerseImplCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$$VerseImplCopyWith(
          _$VerseImpl value, $Res Function(_$VerseImpl) then) =
      __$$VerseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int chapterId,
      int verseId,
      String text,
      Book book,
      bool isFavorite});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$VerseImplCopyWithImpl<$Res>
    extends _$VerseCopyWithImpl<$Res, _$VerseImpl>
    implements _$$VerseImplCopyWith<$Res> {
  __$$VerseImplCopyWithImpl(
      _$VerseImpl _value, $Res Function(_$VerseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterId = null,
    Object? verseId = null,
    Object? text = null,
    Object? book = null,
    Object? isFavorite = null,
  }) {
    return _then(_$VerseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: null == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as int,
      verseId: null == verseId
          ? _value.verseId
          : verseId // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerseImpl extends _Verse {
  const _$VerseImpl(
      {required this.id,
      required this.chapterId,
      required this.verseId,
      required this.text,
      required this.book,
      required this.isFavorite})
      : super._();

  factory _$VerseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseImplFromJson(json);

  @override
  final int id;
  @override
  final int chapterId;
  @override
  final int verseId;
  @override
  final String text;
  @override
  final Book book;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'Verse(id: $id, chapterId: $chapterId, verseId: $verseId, text: $text, book: $book, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapterId, chapterId) ||
                other.chapterId == chapterId) &&
            (identical(other.verseId, verseId) || other.verseId == verseId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, chapterId, verseId, text, book, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      __$$VerseImplCopyWithImpl<_$VerseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseImplToJson(
      this,
    );
  }
}

abstract class _Verse extends Verse {
  const factory _Verse(
      {required final int id,
      required final int chapterId,
      required final int verseId,
      required final String text,
      required final Book book,
      required final bool isFavorite}) = _$VerseImpl;
  const _Verse._() : super._();

  factory _Verse.fromJson(Map<String, dynamic> json) = _$VerseImpl.fromJson;

  @override
  int get id;
  @override
  int get chapterId;
  @override
  int get verseId;
  @override
  String get text;
  @override
  Book get book;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
