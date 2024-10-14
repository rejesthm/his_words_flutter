// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      bookmarked: json['bookmarked'] as bool,
      id: (json['id'] as num?)?.toInt(),
      number: json['number'] as String?,
      translation: json['translation'] as String?,
      verses: (json['verses'] as List<dynamic>?)
          ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'bookmarked': instance.bookmarked,
      'id': instance.id,
      'number': instance.number,
      'translation': instance.translation,
      'verses': instance.verses,
    };
