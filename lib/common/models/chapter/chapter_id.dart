import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_id.freezed.dart';
part 'chapter_id.g.dart';

@freezed
class ChapterId with _$ChapterId {
  const factory ChapterId({
    int? id,
  }) = _ChapterId;

  factory ChapterId.fromJson(Map<String, dynamic> json) =>
      _$ChapterIdFromJson(json);

  const ChapterId._();
}
