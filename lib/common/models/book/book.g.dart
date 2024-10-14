// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      testament: json['testament'] as String?,
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => ChapterId.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'testament': instance.testament,
      'chapters': instance.chapters,
    };
