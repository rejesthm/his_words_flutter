import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his_words/common/models/verse/verse.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required bool bookmarked,
    int? id,
    String? number,
    String? translation,
    List<Verse>? verses,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  const Chapter._();
}
