// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerseImpl _$$VerseImplFromJson(Map<String, dynamic> json) => _$VerseImpl(
      id: (json['id'] as num).toInt(),
      chapterId: (json['chapterId'] as num).toInt(),
      verseId: (json['verseId'] as num).toInt(),
      text: json['text'] as String,
      book: Book.fromJson(json['book'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$VerseImplToJson(_$VerseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chapterId': instance.chapterId,
      'verseId': instance.verseId,
      'text': instance.text,
      'book': instance.book,
      'isFavorite': instance.isFavorite,
    };
