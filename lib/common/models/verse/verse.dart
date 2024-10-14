import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his_words/common/models/book/book.dart';

part 'verse.freezed.dart';
part 'verse.g.dart';

@freezed
class Verse with _$Verse {
  const factory Verse({
    required int id,
    required int chapterId,
    required int verseId,
    required String text,
    required Book book,
    required bool isFavorite,
  }) = _Verse;

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);

  const Verse._();
}
